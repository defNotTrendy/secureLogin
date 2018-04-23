# secureLogin

Tester app imitation organisational login pages - STICTLY for dev purposes only

**REPO OVERVIEW**

- MITM w. WifiPhischer (see: http://mvondracek.github.io/wifimitm/ and https://travis-ci.org/wifiphisher/wifiphisher.svg?branch=master)
    ````
        git clone https://github.com/REPO-OWNER/REPO.git
        cd REPO/wifimitm
        make

A usage of implemented Makefile, which can be used for a convenient installation, is shown in table below.

Table: A usage of Makefile
Command 	Description
````
make requirements 	#Install requirements.
make install 	#Install the wifimitm package and the wifimitmcli tool.
make man 	#Install a manual page of wifimitmcli.
make, make all 	#Install requirements, the package, the tool and the manual page.
````

For information concerning usage of <em>wifimitmcli</em>, a&nbsp;user can start the tool
with <code class="highlighter-rouge">-h</code> or <code class="highlighter-rouge">--help</code> argument, which results in showing a help page.
More detailed information about <em>wifimitmcli</em> can be found on its installed manual page.</p>

<div class="language-sh highlighter-rouge"><pre class="highlight"><code>wifimitmcli --help
</code></pre>
</div>

<div class="language-sh highlighter-rouge"><pre class="highlight"><code>man wifimitmcli
</code></pre>
</div>

<p>Table below shows an overview of&nbsp;program arguments of&nbsp;<em>wifimitmcli</em>
tool. The&nbsp;synopsis of <em>wifimitmcli’s</em> arguments is specified as follows:</p>

<div class="highlighter-rouge"><pre class="highlight"><code>wifimitmcli [-h] [-v] [-ll &lt;level&gt; ] [-p] [-cf FILE ] &lt;ssid&gt; &lt;interface&gt;
</code></pre>
</div>

<p>Table: Program arguments of <em>wifimitmcli</em></p>

<table>
  <thead>
    <tr>
      <th>Argument</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code class="highlighter-rouge">-h</code>, <code class="highlighter-rouge">--help</code></td>
      <td>Show help message and exit.</td>
    </tr>
    <tr>
      <td><code class="highlighter-rouge">-v</code>, <code class="highlighter-rouge">--version</code></td>
      <td>Show program’s version number and exit.</td>
    </tr>
    <tr>
      <td><code class="highlighter-rouge">-ll &lt;level&gt;</code>, <code class="highlighter-rouge">--logging-level &lt;level&gt;</code></td>
      <td>Select logging level (choices: <code class="highlighter-rouge">disabled</code>, <code class="highlighter-rouge">critical</code>, <code class="highlighter-rouge">error</code>, <code class="highlighter-rouge">warning</code>, <code class="highlighter-rouge">info</code>, <code class="highlighter-rouge">debug</code>).</td>
    </tr>
    <tr>
      <td><code class="highlighter-rouge">-p</code>, <code class="highlighter-rouge">--phishing</code></td>
      <td>Enable phishing attack if dictionary attack fails.</td>
    </tr>
    <tr>
      <td><code class="highlighter-rouge">-cf FILE</code>, <code class="highlighter-rouge">--capture-file FILE</code></td>
      <td>Capture network traffic to provided file.</td>
    </tr>
    <tr>
      <td><code class="highlighter-rouge">&lt;ssid&gt;</code></td>
      <td>Attack network with provided SSID.</td>
    </tr>
    <tr>
      <td><code class="highlighter-rouge">&lt;interface&gt;</code></td>
      <td>Use provided wireless network interface for attack.</td>
    </tr>
  </tbody>
</table>

<p>As seen from the synopsis shown above, <code class="highlighter-rouge">&lt;ssid&gt;</code> and <code class="highlighter-rouge">&lt;interface&gt;</code> arguments are
mandatory to start <em>wifimitmcli</em>. In the case that provided arguments are not correct,
an appropriate error message and the synopsis is shown and the program terminates immediately
after the arguments check.</p>




###- Fluxion via Sage (see: )





###-Rouge HostAP (see: https://github.com/wifiphisher/roguehostapd.git)

```bash
git clone https://github.com/wifiphisher/roguehostapd.git # Download the latest version
cd roguehostapd # Switch to the roguehostapd directory
python setup.py install # Build the shared library of hostapd
```

## Usage

***

```shell
python run.py -i wlan0 -ssid haha
```

Use wlan0 for spawning the OPEN rogue AP on channel 6 and the ssid is haha.

***

```shell
python run.py -i wlan0 -ssid haha -pK 12345678
```

Use wlan0 for spawning the WPA2/WPA rogue AP with passhrase 12345678

***

```shell
python run.py -i wlan0 -ssid haha -kA
```

Use wlan0 for spawning the OPEN rogue AP supporting the KARMA attack.

***

```python
HOSTAPD_CONFIG_DICT = {
    'ssid': 'haha',
    'interface': 'wlan0',
    'karma_enable': 1}
HOSTAPD_OPTION_DICT = {
    'debug_level': hostapd_constants.HOSTAPD_DEBUG_OFF
}
HOSTAPD_OBJ = Hostapd()
HOSTAPD_OBJ.start(HOSTAPD_CONFIG_DICT, HOSTAPD_OPTION_DICT)
```

The above configuration will perform the KARMA attack.

Following are all the options along with their descriptions (also available with `python run.py -h`)


| Short form | Long form | Explanation |
| :----------: | :---------: | :-----------: |
|-h | --help| show this help message and exit |
|-ssid SSID| --ssid SSID| Select the ssid for the spawn rogue AP|
|-c CHANNEL| --channel CHANNEL| Select the channel number for the spawn rogue AP|
|-bI BEACON_INT| --beacon_int BEACON_INT| Define the beacon interval in milliseconds for the spawn rogue AP|
|-i INTERFACE| --interface INTERFACE| Select the interface for the spawn rogue AP. Example: -i wlan0|
|-pK WPA_PASSPHRASE| --wpa_passphrase WPA_PASSPHRASE| Define the password for the spawn rogue AP.|
|-kA|| Enabling the KARMA attack|
|-dV|--debug-verbose| Enabling the verbose debug log|
|-K|--key_data|Include key data in debug messages|
|-t|--timestamp|Include timestamps in some debug messages|
|-v|--version|Show hostapd version|




###- Wifi MITM (see: http://mvondracek.github.io/wifimitm/)



### HOSTING VIA GOOGLE COMPUTE / GOOGLE CLOUD
___**Install** with NodeJs_
```nodejs
 npm install -g firebase-tools
 ```

Once in your root folder.... <br>
Sign in to Google:
```
firebase login
````

Initiate your project:
```
firebase init
````
#### Add your static files to your deploy directory 
(the default is public)
Deploy your website:
````
firebase deploy

````




### for pwntoools
````apt-get update
apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential
pip install --upgrade pip
pip install --upgrade pwntools
