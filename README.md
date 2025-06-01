# Approximate Multiplier using Three-Operand Binary Adder

This project explores a novel hardware architecture for an **approximate multiplier**, optimized using a **three-operand binary adder**. The aim is to reduce power consumption, delay, and area by leveraging approximation techniques, making it ideal for **error-tolerant applications** like image processing, machine learning, and embedded systems.

---

## Project Highlights

- Uses **altered partial products** based on statistical probability
- Employs a **three-operand adder** for final stage accumulation
- Designed using **Verilog HDL** and simulated on **Xilinx ISE**
- Demonstrates **area, delay, and power efficiency**
- Tolerates minor accuracy loss (<5%) in exchange for hardware optimization

---

##  Technologies Used

- Verilog HDL
- Xilinx ISE Design Suite
- Dadda Tree Algorithm
- RTL and Technology Schematic Analysis
- Approximate Logic Circuits (Adders, Compressors)



## 📁 Project Structure
![Project Structure](https://github.com/user-attachments/assets/aa3a66d7-12ec-405f-a4d2-96dff7cacf96)



---

## Results Summary

| Metric         | Improvement |
|----------------|-------------|
| Power          | ~15% lower  |
| Area           | ~30% smaller|
| Accuracy Loss  | < 5%        |
| Delay          | Reduced     |

- RTL and technology schematics verified
- Output waveforms confirm correct behavior
- Synthesis and power reports included

---

## Applications

- Image & video processing
- Machine learning inference
- Digital signal processing
- Embedded/IoT systems
- Approximate cryptographic systems

---

## Future Scope

- Implement signed & floating-point support
- Add pipelining for high-performance designs
- Integrate into FPGA or ASIC prototyping
- Adaptive accuracy based on workload sensitivity

---

## Authors

- **Divya Madireddy**
- **Hruthik Arroju**  
M.S. in Electrical & Electronics Engineering  
California State University, Sacramento

---

## License

This project is for academic and research use. For reuse or extension, please cite the authors or request permission.

---

*Designed as part of a Master's thesis, Fall 2024.*


