{ pkgs, ...}: {
  services = {
    printing = {
      drivers = [
      	pkgs.cups-kyocera-ecosys-m552x-p502x
      ];	
    };
  };

  hardware.printers = {
  	ensurePrinters = [
  	  {
  	  	name = "Kyocera_ECOSYS_M5521cdw";
  	  	location = "Home";
  	  	deviceUri = "dnssd://Kyocera%20ECOSYS%20M5521cdw._ipp._tcp.local/?uuid=4509a320-0062-0116-0076-0025074fd67f";
  	  	model = "Kyocera/Kyocera ECOSYS M5521cdw.PPD";
  	  }
  	];
  	ensureDefaultPrinter = "Kyocera_ECOSYS_M5521cdw";
  };

  
}
