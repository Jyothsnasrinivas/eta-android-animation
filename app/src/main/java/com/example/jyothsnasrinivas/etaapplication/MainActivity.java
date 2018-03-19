package com.example.jyothsnasrinivas.etaapplication;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import eta.android.Animator;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Animator.animate(this, R.id.animated_text);
        // Animator.animate(this, R.id.imageView);
    }
}
