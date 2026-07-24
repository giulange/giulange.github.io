---
layout: page
permalink: /lab/
title: lab
description: The <b>Pedo-informatics Lab</b> — a distributed research facility integrating computing infrastructure, environmental sensing devices, and electronic prototyping for soil and agro-environmental research.
nav: true
nav_order: 4
---

## 🧪 Pedo-informatics Lab

The **Pedo-informatics Lab** is not a single room — it is a **distributed research facility**. It integrates lab-owned computing infrastructure, self-developed monitoring devices deployed in the field, and shared departmental resources into one operational unit for research at the intersection of **soil science, geospatial informatics, and environmental monitoring**.

The name reflects a trajectory: from _pedometrics_ — the quantitative study of soil variability — towards _pedo-informatics_, where sensing hardware, data infrastructures, computing, and spatial modelling are designed and operated as a single pipeline, from the electron in the sensor to the decision on the map.

---

## 🖥️ Computing infrastructure

### Lab-owned resources

**Main rack** — a rack cabinet hosting **5 servers** dedicated to geospatial processing, modelling, and data services:

- **HPC node (2018)** — 7U octa-socket system: 8 × Intel Xeon Platinum 8153 (**128 cores / 256 threads**), 768 GB DDR4-2666 ECC RAM, 2 × NVIDIA Tesla P100 16 GB GPU accelerators, ~5.7 TB enterprise SSD + 48 TB SAS storage, SLURM workload manager, 4 × 10 GbE
- **Storage server (2018)** — 4U 36-bay chassis: 2 × Intel Xeon E5-2620v4 (16 cores / 32 threads), 64 GB DDR4 ECC RAM, **220 TB raw** (22 × 10 TB SAS, hardware RAID), 4 × 10 GbE
- **2 × GPU tower servers (2012)** — each with 2 × Intel Xeon E5-2640 (12 cores / 24 threads), 32 / 64 GB DDR3-1600 ECC RAM, hardware RAID; one equipped with a Quadro 6000 GPU for scientific visualization, the other with a Tesla C2075 GPU for computing — GPU-accelerated geocomputation in the lab dates back to 2012
- **Rack server (2012)** — 2U 12-bay chassis, 2 × Intel Xeon E5607 (8 cores), 16 GB ECC RAM, ~13 TB near-line SAS + SSD, hardware RAID, redundant PSUs

Everything is housed in a 42U rack cabinet, completed by dual 27″ QHD monitoring consoles and a dedicated 1.9 kW UPS.

**GERMINA — cabinet III** — two lab-owned nodes (2023) installed in a dedicated 42U rack with a 5 kVA online double-conversion UPS and managed PDUs:

- **GPU computing node** — 2 × Intel Xeon Gold 6342 (48 cores / 96 threads), 1 TB DDR4-3200 ECC RAM, NVIDIA A100 80 GB Tensor Core GPU, ~92 TB SAS SSD (6 × 15.3 TB, hardware RAID), 2 × 10 GbE + dual-port 25 GbE
- **Storage node** — 60-bay 4U chassis, 2 × Intel Xeon Silver 4309Y (16 cores / 32 threads), 128 GB DDR4-3200 ECC RAM, **576 TB raw** (32 × 18 TB SAS, RAID 6), NVMe backplane, 2 × 10 GbE + dual-port 25 GbE

The GPU node runs a **cloud-native AI stack** (Kubernetes with GPU operator, JupyterHub-based multi-user computing, DASK, RAPIDS, TensorFlow, PyTorch) supporting machine-learning workflows for digital soil mapping and geospatial modelling.

### Shared infrastructure

<div class="row justify-content-center">
    <div class="col-sm-4 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/lab/germina.jpg" title="GERMINA — Centro di Supercalcolo" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

The lab operates within **GERMINA**, the departmental supercomputing centre — an infrastructure representing an investment of approximately **€1M**, for which I serve as **co-responsible** together with two colleagues. This role covers infrastructure design, operations, and evolution — meaning the lab does not merely _use_ shared computing resources, it helps **run** them.

---

## 🌦️ Environmental sensing & device development

The lab designs and builds its own **monitoring devices** for pedo-climo-agronomic applications — from circuit design and custom PCBs to firmware and integration with FAIR data infrastructures.

**Agro-meteorological monitoring station** — a self-developed, expandable platform currently equipped with:

- **Atmosphere**: air temperature, relative humidity, leaf wetness, wind speed and direction, rainfall
- **Soil**: temperature, moisture
- **Plant** _(expansion ready)_: the platform is designed to accommodate plant-level sensors (e.g. dendrometers, sap flow)

<div class="row justify-content-center">
    <div class="col-sm-6 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/projects/agrimetiot.png" title="AgriMetIoT sensor board" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm-6 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/projects/AgriMetSupport_CPS.jpg" title="Sensor station prototype" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

These devices are deployed and operated within the [AgriMetIoT](/projects/02_AgriMetIoT/) and [AgriMetSupport](/projects/01_AgriMetSupport/) projects, feeding standardized sensor data (SensorThings API) into decision-support workflows.

---

## 🔧 Prototyping workshop

Hardware is born before it reaches the field. The lab's prototyping bench — hosted off-campus, where the best ideas tend to happen anyway — includes:

- **3D printer** for enclosures, mounts, and mechanical parts of the monitoring devices
- **Professional soldering and rework equipment** for PCB assembly and repair
- Microcontroller ecosystems: **ESP32**, **Raspberry Pi**, custom PCB designs

---

> 🧭 _The Pedo-informatics Lab is a facility in the functional sense: distributed across a server room, a departmental data center, agricultural fields, and a workbench — held together by one research pipeline._
