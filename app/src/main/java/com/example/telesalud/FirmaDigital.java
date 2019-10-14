package com.example.telesalud;

import android.app.AlertDialog;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;

public class FirmaDigital {

    public void firmar(String datos){
        KeyPairGenerator keyPairGen;
        String data = datos;
        {
            try {
                keyPairGen = KeyPairGenerator.getInstance("DSA");
                //Initializing the key pair generator
                keyPairGen.initialize(2048);
                //Generate the pair of keys
                KeyPair pair = keyPairGen.generateKeyPair();
                //Getting the private key from the key pair
                PrivateKey privKey = pair.getPrivate();
                Signature sign;
                sign = Signature.getInstance("SHA256withDSA");
                //Initialize the signature
                sign.initSign(privKey);
                byte[] bytes = data.getBytes();
                //Adding data to the signature
                sign.update(bytes);
                //Calculating the signature
                byte[] signature = sign.sign();
                System.out.println("Digital signature for given text: "+new String(signature, "UTF8"));
                //Initializing the signature
                sign.initVerify(pair.getPublic());
                sign.update(bytes);
                //Verifying the signature
                boolean bool = sign.verify(signature);
                if(bool) {
                    System.out.println("Signature verified");
                } else {
                    System.out.println("Signature failed");
                }
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            } catch (InvalidKeyException e) {
                e.printStackTrace();
            } catch (SignatureException e) {
                e.printStackTrace();
            }catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }
}
