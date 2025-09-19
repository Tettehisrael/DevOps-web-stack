const express = require('express');
const app = express();
const port = 3000;

// Welcome endpoint
app.get('/', (req, res) => {
    res.send('Welcome to the DevOps Logistics App!');
});

// Logistics-related endpoint (simulating SmartFreight)
app.get('/shipment/status', (req, res) => {
    const shipmentId = req.query.id || 'SHIP123';
    res.json({
        shipmentId: shipmentId,
        status: 'In Transit',
        lastUpdated: new Date().toISOString(),
        estimatedDelivery: '2025-09-25'
    });
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});