package com.example.myapplication

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.activity.ComponentActivity

class MainActivity : ComponentActivity() {
    private lateinit var counterTextView: TextView
    private lateinit var incrementButton: Button
    private lateinit var resetButton: Button
    private lateinit var decrementButton: Button
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        counterTextView = findViewById(R.id.counterTextView)
        incrementButton = findViewById(R.id.incrementButton)
        resetButton = findViewById(R.id.resetButton)
        decrementButton = findViewById(R.id.decrementButton)

        // Initialize the counter text view
        updateCounterTextView()

        decrementButton.setOnClickListener {
            updateCounter(-1)
        }

        resetButton.setOnClickListener {
            count = 0
            updateCounterTextView()
        }

        incrementButton.setOnClickListener {
            updateCounter(1)
        }
    }

    private fun updateCounter(value: Int) {
        count += value
        updateCounterTextView()
    }

    private fun updateCounterTextView() {
        counterTextView.text = count.toString()
    }
}
