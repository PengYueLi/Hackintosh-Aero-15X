/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-TB3.aml, Tue Mar  5 06:02:06 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000016E0 (5856)
 *     Revision         0x01
 *     Checksum         0x28
 *     OEM ID           "KGP"
 *     OEM Table ID     "TB3HP"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "TB3", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP13, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP13.PXSX, DeviceObj)    // (from opcode)
    External (DTGP, MethodObj)    // 5 Arguments (from opcode)
    External (PXSX, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.RP13)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            Return (Zero)
        }

        Device (UPSB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            OperationRegion (A1E0, PCI_Config, Zero, 0x40)
            Field (A1E0, ByteAcc, NoLock, Preserve)
            {
                AVND,   32, 
                BMIE,   3, 
                Offset (0x18), 
                PRIB,   8, 
                SECB,   8, 
                SUBB,   8, 
                Offset (0x1E), 
                    ,   13, 
                MABT,   1
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (SECB)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x06)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "PCI-Thunderbolt", 
                    One
                })
            }

            Device (DSB0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x06)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x09)
                        {
                            "Built In"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                           
                        }, 

                        "PCIHotplugCapable", 
                        One
                    })
                }

                Device (NHI0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }

                        Local0 = Package (0x0D)
                            {
                                "AAPL,slot-name", 
                                Buffer (0x07)
                                {
                                    "Slot-4"
                                }, 

                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                           
                                }, 

                                "device_type", 
                                Buffer (0x19)
                                {
                                    "Thunderbolt 3 Controller"
                                }, 

                                "model", 
                                Buffer (0x22)
                                {
                                    "GC-Alpine Ridge Thunderbolt 3 NHI"
                                }, 

                                "name", 
                                Buffer (0x27)
                                {
                                    "GC-Alpine Ridge Thunderbolt Controller"
                                }, 

                                "power-save", 
                                One, 
                                Buffer (One)
                                {
                                     0x00                                           
                                }
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Return (Zero)
                }
            }

            Device (DSB1)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (_SUN, 0x04)  // _SUN: Slot User Number
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x69, 
                        0x03
                    })
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x04)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-4"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                           
                        }
                    })
                }

                Device (UPS0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                    Field (ARE0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   16
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Device (DSB0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1, 
                            Offset (0x3E), 
                                ,   6, 
                            SBRS,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (DEV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (DSB3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                Name (_SUN, 0x04)  // _SUN: Slot User Number
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB4)
                    {
                        Name (_ADR, 0x00040000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB5)
                    {
                        Name (_ADR, 0x00050000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }

                    Device (DSB6)
                    {
                        Name (_ADR, 0x00060000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }
                }
            }

            Device (DSB2)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x04)
                    {
                        "PCIHotplugCapable", 
                        One, 
                        "IOPCIHPType", 
                        0x02
                    })
                }

                Device (XHC5)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }

                        Local0 = Package (0x14)
                            {
                                "AAPL,slot-name", 
                                Buffer (0x07)
                                {
                                    "Slot-4"
                                }, 

                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                           
                                }, 

                                "model", 
                                Buffer (0x16)
                                {
                                    "GC-Alpine Ridge USB-C"
                                }, 

                                "name", 
                                Buffer (0x21)
                                {
                                    "GC-Alpine Ridge USB-C Controller"
                                }, 

                                "device_type", 
                                Buffer (0x13)
                                {
                                    "USB 3.1 Controller"
                                }, 

                                "USBBusNumber", 
                                Zero, 
                                "UsbCompanionControllerPresent", 
                                One, 
                                "AAPL,XHCI-clock-id", 
                                One, 
                                "IOPCIExpressCapabilites", 
                                0x02, 
                                "IOPCIHPType", 
                                0x02
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (Package (0x02)
                        {
                            0x69, 
                            0x03
                        })
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (SSP1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x31, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                }
                            })
                            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                            {
                                If ((Arg2 == Zero))
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                           
                                    })
                                }

                                Return (Package (0x02)
                                {
                                    "UsbCPortNumber", 
                                    One
                                })
                            }
                        }

                        Device (SSP2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x31, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                }
                            })
                            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                            {
                                If ((Arg2 == Zero))
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                           
                                    })
                                }

                                Return (Package (0x02)
                                {
                                    "UsbCPortNumber", 
                                    0x02
                                })
                            }
                        }

                        Device (HS01)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x31, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                }
                            })
                        }

                        Device (HS02)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x31, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                }
                            })
                        }
                    }
                }
            }

            Device (DSB4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (!Arg2)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x04)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-4"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                           
                        }
                    })
                }

                Device (UPS0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                    Field (ARE0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   16
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }

                    Device (DSB0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1, 
                            Offset (0x3E), 
                                ,   6, 
                            SBRS,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (DEV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (DSB3)
                    {
                        Name (_ADR, 0x00030000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB4)
                    {
                        Name (_ADR, 0x00040000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }

                        Device (UPS0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (Zero)
                            }

                            Device (DSB0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1, 
                                    Offset (0x3E), 
                                        ,   6, 
                                    SBRS,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB3)
                            {
                                Name (_ADR, 0x00030000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB4)
                            {
                                Name (_ADR, 0x00040000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }

                                Device (DEV0)
                                {
                                    Name (_ADR, Zero)  // _ADR: Address
                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                            Device (DSB5)
                            {
                                Name (_ADR, 0x00050000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }

                            Device (DSB6)
                            {
                                Name (_ADR, 0x00060000)  // _ADR: Address
                                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                                Field (A1E0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   32, 
                                    BMIE,   3, 
                                    Offset (0x18), 
                                    PRIB,   8, 
                                    SECB,   8, 
                                    SUBB,   8, 
                                    Offset (0x1E), 
                                        ,   13, 
                                    MABT,   1
                                }

                                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                {
                                    Return (SECB)
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (Zero)
                                }
                            }
                        }
                    }

                    Device (DSB5)
                    {
                        Name (_ADR, 0x00050000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }

                    Device (DSB6)
                    {
                        Name (_ADR, 0x00060000)  // _ADR: Address
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (Zero)
                        }
                    }
                }
            }
        }
    }
}

