---
layout: page
permalink: /lab/
title: lab
description: The <b>Pedo-informatics Lab</b> — a distributed research facility integrating computing infrastructure, environmental sensing devices, and electronic prototyping for soil and agro-environmental research.
nav: true
nav_order: 7
---

## 🧪 Pedo-informatics Lab

The **Pedo-informatics Lab** is not a single room — it is a **distributed research facility**. It integrates lab-owned computing infrastructure, self-developed monitoring devices deployed in the field, and shared departmental resources into one operational unit for research at the intersection of **soil science, geospatial informatics, and environmental monitoring**.

The name reflects a trajectory: from _pedometrics_ — the quantitative study of soil variability — towards _pedo-informatics_, where sensing hardware, data infrastructures, computing, and spatial modelling are designed and operated as a single pipeline, from the electron in the sensor to the decision on the map.

---

## 🖥️ Computing infrastructure

### Lab-owned resources

**Main rack** — a DELL rack cabinet hosting **5 servers** dedicated to geospatial processing, modelling, and data services.

<!-- TODO: confirm real specs per server -->

- _Server specs to be detailed — CPU, RAM, storage per node (placeholder)_

**Departmental data center (CED) — cabinet III** — two lab-owned servers hosted in the departmental CED:

- **Storage server** — _specs to be detailed (placeholder)_
- **Computing server** — _specs to be detailed (placeholder)_

### Shared infrastructure

The lab operates within the **departmental data center (CED)**, an infrastructure representing an investment of approximately **€1M**, for which I serve as **co-responsible** together with two colleagues. This role covers infrastructure design, operations, and evolution — meaning the lab does not merely _use_ shared computing resources, it helps **run** them.

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
