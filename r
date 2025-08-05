📧 Task 2 – Phishing Email Analysis

🌟 Objective

Analyze a suspicious email to identify phishing characteristics and understand how attackers use social engineering tactics through spoofed messages.

🔧 Tools Used

Email Header Analyzer: MXToolbox Header Analyzer

Manual inspection (header, content, SPF, DKIM, DMARC checks)

📊 Email Summary

Sender Claimed: Quora Digest <english-quora-digest@quora.com>

Recipient: ayushkumar1020304050@gmail.com

Subject: "I am Tejaswini (Ruby)..."

Real Sending IP: 52.20.209.227

🔐 Authentication Results

Method

Result

Details

SPF

Pass

quora.com authorized IP 52.20.209.227

DKIM

Pass

Signature valid for domain quora.com using selector pigeon

DMARC

Pass

Domain policy is p=reject; header alignment passed

This suggests the email is technically authentic and sent by Quora, based on SPF, DKIM, and DMARC checks.

🚨 Red Flags / Indicators (for phishing awareness)

Indicator

Observation

Subject

Suspiciously emotional and personal tone: "I am Tejaswini (Ruby)..."

Link Patterns

No links tested here, but unsubscribe URL should be verified before clicking

Social Engineering

Possibly attempting to exploit emotional vulnerability

Content Analysis

Highly personal content in a generic newsletter format

Email Origin

Comes from quora.com, but could be a psychological bait

💡 Conclusion

While this particular email passes all technical authentication checks (SPF, DKIM, DMARC), the subject line and body content raise red flags for emotional manipulation and social engineering. Such tactics are commonly used in phishing campaigns to trigger user curiosity or trust.

If this email had included:

Suspicious URLs

Urgent calls to action

Fake login requests

Attachments (e.g., .zip, .exe)

...then it would qualify as a more direct phishing attempt.



Email analyzed by the mxtoolbox






Delivered-To: ayushkumar1020304050@gmail.com
Received: by 2002:a05:651c:1992:b0:332:3a8c:3439 with SMTP id bx18csp1091288ljb;
        Mon, 4 Aug 2025 12:26:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEk9sXIGtAAcx+BKnU+5AjbXX89CY+n3dy+OTKZ2Z94BdjHrQWbInkFlyfLyJYkTbZE+RxL
X-Received: by 2002:ac8:5c93:0:b0:4b0:77ff:d77d with SMTP id d75a77b69052e-4b077ffdc16mr40918201cf.33.1754335577426;
        Mon, 04 Aug 2025 12:26:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1754335577; cv=none;
        d=google.com; s=arc-20240605;
        b=TPfagO/U4JCwwdLrXJKYL00fUE/UboSn1ul3Ur+evtpfd9rTJxRK5bUK3C6ZOsmjVQ
         ljQxW+Q8WXsiLWPS7S6UAn/7hN646rNAce4memZKDJYbrUwFf1QE5HHsWfYkCKvVPJ6j
         r2AA23yIk4V2eDovdDonVlSnPYfnrGAD6FQ24jP6YZbX9YCiHODEEBqSYYR7mM9Fjbf2
         plvrV8dX2bR61cHIlQFv/XThOXmXR7zRBytEXGelcJ33FYgvqRiau2kMFA1rZH9yZO4A
         Xa3vz29b/rbxZAzcziVa6om/wvSrvXqUXeDg+qm0hiK+N+73zhqD1v4aHbgx2EQe1Jf3
         P10A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=message-id:date:list-unsubscribe:subject:to:from:mime-version
         :dkim-signature;
        bh=zaA0SuiPS10wmyaTcCaEeEN5aZwPAZDlp4BirD2v14E=;
        fh=JDOfYpWicVp/NICGk0v9hx5VfmJ4GfNSO7CzLxivfF0=;
        b=dcCse8mzLnSR+GXbt07kgnrA0G20MiDWWLXFVpko3Yuf/7d3tebMrIaKXcq6cPw9b6
         vSxPruclwHVOj//3NY22CXP4a8iKxAf3utzmIgjTOphVH7nOsY/mUDbMExvhXBHkcexK
         RmdOvxm8vM3kwibfKxpbldte0aNl3MFOKFTaFFlkgLIE7PAQqrD6qjFkhrYNIuqN3oHq
         x1eixWlUpO7tA8INwEX9XRuylOjOGCAuvWdE0I/Q0y9ykSerD0mjvMB7M2rB591I6irU
         a5RqU5xhIEtoWBBS2oykdQA9oFrYwvbTRncRhq/31sublXrURtsb5FyWBa807imLnFGc
         MAFA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@quora.com header.s=pigeon header.b=GP6lbvkq;
       spf=pass (google.com: domain of noreply@quora.com designates 52.20.209.227 as permitted sender) smtp.mailfrom=noreply@quora.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=quora.com
Return-Path: <noreply@quora.com>
Received: from o5.pigeon.quora.com (o5.pigeon.quora.com. [52.20.209.227])
        by mx.google.com with ESMTPS id d75a77b69052e-4aeee903389si63456241cf.178.2025.08.04.12.26.17
        for <ayushkumar1020304050@gmail.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 12:26:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of noreply@quora.com designates 52.20.209.227 as permitted sender) client-ip=52.20.209.227;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@quora.com header.s=pigeon header.b=GP6lbvkq;
       spf=pass (google.com: domain of noreply@quora.com designates 52.20.209.227 as permitted sender) smtp.mailfrom=noreply@quora.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=quora.com
Received: by pigeon-at-10037 (OpenSMTPD) with ESMTP id ace4cc0f for <ayushkumar1020304050@gmail.com>; Mon, 4 Aug 2025 19:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quora.com; h= content-type:mime-version:from:to:subject:list-unsubscribe:date :message-id; s=pigeon; bh=zaA0SuiPS10wmyaTcCaEeEN5aZwPAZDlp4BirD 2v14E=; b=GP6lbvkqlLhKNtHV1NYGYgUH8ts7ZJ7z4IOppQJhFMFNwivOV6sjaO G1zT3BFp1BiDQwDrCItuoB0X050Dseu/0aD0n3TTcwvQz9vY6Eoo27gfx4avlaZT 2GF/FSZ2jAIoZ0028XvrUYs2UeyvhRtfME7jK8+UHpXokEezHNNGkmnQE+wJzZvH 1zEtKE1HgITMAGCyVcHiSI4LCdsTIW66hEryp5zAAI6Hk4Fz2D4TdrvMBwe2kY5s yxJgSW2uJn+yr9B0i/qjTCkXLqjl1Ph7xFHqEZU7XoemJrqkYJJXzvawQIZouwFo ent34PEtCFG4v8/MK81MzyvUrJb31SaA==
Content-Type: multipart/alternative; boundary="===============0747052398799050625=="
MIME-Version: 1.0
From: Quora Digest <english-quora-digest@quora.com>
To: ayushkumar1020304050@gmail.com
Subject: I am Tejaswini (Ruby). 23 years old girl and an elder child. I am very disappointed wi...
List-Unsubscribe: <https://www.quora.com/email_optout/qemail_unsubscribe?email_track_id=09fd615fb69b4b2886664efc509acc2f&ish=1&t=1754335576166444&token=10d8a3ef86e1865f6ee49db966be27728008da9d403d0d134101d161205f84fe99bad936057fc47a489aa1b0fe73ceb1832baa07b3fabfc7f2b64f83d0210192&type=2&uid=3062852667>
X-CID: vhI3rN3rEJc_JMdGVaqxdRiS6Q-bUDy1Y9fP-2g5UXpr9w6eX9feJxgmReE06q0F32bWyWCtIKwg96-6geRYU3Tw65TvPNhWoWHNSm1TF5IM8MrX6TB9qTyRamqtRk9Gmd_MJQP1VzomdT827FETAAECAA==
Date: Mon, 04 Aug 2025 19:26:16 +0000
Message-ID: <vhI3rN3rEJc_JMdGVaqxdRiS6Q-bUDy1Y9fP-2g5UXpr9w6eX9feJxgmReE06q0F32bWyWCtIKwg96-6geRYU3Tw65TvPNhWoWHNSm1TF5IM8MrX6TB9qTyRamqtRk9Gmd_MJQP1VzomdT827FETAAECAA==@t1.msgid.quoramail.com>
X-SMTPAPI: {"unique_args": {"Message-ID": "<vhI3rN3rEJc_JMdGVaqxdRiS6Q-bUDy1Y9fP-2g5UXpr9w6eX9feJxgmReE06q0F32bWyWCtIKwg96-6geRYU3Tw65TvPNhWoWHNSm1TF5IM8MrX6TB9qTyRamqtRk9Gmd_MJQP1VzomdT827FETAAECAA==@t1.msgid.quoramail.com>", "account": "digest", "email_type": 2, "ip_pool": "main", "X-QMSG": "DUIg5DwksENBGhqD6JoQf8P5Evtm7jnobd8sBaOslzygzcd1pIMpE49Y1PSg8xboH0BVA-GAgi1KCS20sFpdFBp4cMYLnfIHSy6ZbYs4qjG2na8NNGosgcEX2QTmvt846BzpsbJwjEe99z9iEBEGM_H4JR9NeFkTrIKMfnfL1lpVR0YeXhiY2tzrX_JaPJ40Vk6ZWS_AiHuOV8o2F8u2-jfNqRJ3Emdf_BIiGGEMXdbOfbxUXfB-DmakYJUBnPeMO5W2bu_mBc5QzmGfdxFp5hNxLQQ8r9FyOPL-9dYGTfgqtcjLJpYF4YLsnNzOW_9QQiPDWn4upK4F9mgs4jQKehjCIGHdG0e8rH5E5SvETgCuJJrc1QW_dKlnreX7xIp71U7jpkEQHt8FEza8JW8h0WQx761aiHVRZnWQyzyTJrP-TZnieiSvn8qIQOdSIewqzz5uWzchGY8tIFr4nUEeQwr7ippMeFxMr7aEc11shVIDcMN_wovL_2Azjq0ckmSWWbMe8UKJrB0S8v-aGYKTM5b1G1Y3UTdhv-8pPYeizsAIYwlgxk4wHqjcP8f3MWK9JGWDXFd-7d1auhedibAYNqEQPGXfDPCPBWiWMnz5O1gnVlerA4kXXq6EXSDuqAABAgA="}, "category": ["account_digest", "email_type_2", "ip_pool_main"], "filters": {"bypass_list_management": {"settings": {"enable": 1}}}, "ip_pool": "main"}
X-QMSG: DUIg5DwksENBGhqD6JoQf8P5Evtm7jnobd8sBaOslzygzcd1pIMpE49Y1PSg8xboH0BVA-GAgi1KCS20sFpdFBp4cMYLnfIHSy6ZbYs4qjG2na8NNGosgcEX2QTmvt846BzpsbJwjEe99z9iEBEGM_H4JR9NeFkTrIKMfnfL1lpVR0YeXhiY2tzrX_JaPJ40Vk6ZWS_AiHuOV8o2F8u2-jfNqRJ3Emdf_BIiGGEMXdbOfbxUXfB-DmakYJUBnPeMO5W2bu_mBc5QzmGfdxFp5hNxLQQ8r9FyOPL-9dYGTfgqtcjLJpYF4YLsnNzOW_9QQiPDWn4upK4F9mgs4jQKehjCIGHdG0e8rH5E5SvETgCuJJrc1QW_dKlnreX7xIp71U7jpkEQHt8FEza8JW8h0WQx761aiHVRZnWQyzyTJrP-TZnieiSvn8qIQOdSIewqzz5uWzchGY8tIFr4nUEeQwr7ippMeFxMr7aEc11shVIDcMN_wovL_2Azjq0ckmSWWbMe8UKJrB0S8v-aGYKTM5b1G1Y3UTdhv-8pPYeizsAIYwlgxk4wHqjcP8f3MWK9JGWDXFd-7d1auhedibAYNqEQPGXfDPCPBWiWMnz5O1gnVlerA4kXXq6EXSDuqAABAgA=

--===============0747052398799050625==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Top stories for Ayush

-----



I am Tejaswini (Ruby). 23 years old girl and an elder child. I am very disa=
ppointed with my life. I don't understand what to do. From January 2025 my =
life took an unexpected turn. I was satisfied with...



Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxfDEwfDIyNzgyNjMyOSJ9&al_pri=3D8&aoid=3DIdY=
B2v2hZuu&aoty=3D4&aty=3D4&cp=3D1&et=3D2&id=3D09fd615fb69b4b2886664efc509acc=
2f&uid=3Dz4oDGokmNKD

-----
Question: What is the salary of an SBI PO officer?


Answer from S.P.Pop. Music


Clarification -

Basic - 48170/- (After 2 annual increments of 1490/- and 2 increments of 14=
90/- for JAIIB and CAIIB)

(My basic during my joining was about 41960/-)

DA -=20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwyfDF8MTQ3Nzc0MzcwMTI3ODE1MiJ9&al_pri=3D8&ao=
id=3DLb7j2W4GtI7&aoty=3D1&aty=3D4&cp=3D2&et=3D2&id=3D09fd615fb69b4b2886664e=
fc509acc2f&uid=3Dz4oDGokmNKD
-----
Question: Can u share ur CGL 2024 final scorecard?


Answer from Dushyant Tiwari


Shift 18th Jan

Raw marks - 327

Final marks - 351

Got Inspector (Examiner)

This was my 2nd attempt .

In this attempt I focused upon my some of the weakness and mistake=20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwzfDF8MTQ3Nzc0Mzg1MTgxMzA5NSJ9&al_pri=3D8&ao=
id=3DoPuovaLTZ71&aoty=3D1&aty=3D4&cp=3D3&et=3D2&id=3D09fd615fb69b4b2886664e=
fc509acc2f&uid=3Dz4oDGokmNKD
-----
Question: I was terminated on a Thursday and they needed my services for th=
e following Monday. I was a salary employee. Would they have to rehire me b=
ack for my service?


Answer from Doc Wittmer


I was laid off on a Friday and told to have my belongings removed from the =
company under security guard by Monday. In about 2 weeks I got a call to co=
me finish an importan=20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw0fDF8MTQ3Nzc0MzgzMzMwNTYzMCJ9&al_pri=3D8&ao=
id=3DjS3uQwx85SH&aoty=3D1&aty=3D4&cp=3D4&et=3D2&id=3D09fd615fb69b4b2886664e=
fc509acc2f&uid=3Dz4oDGokmNKD
-----
Question: I am 24 and I have wasted my life. Is it too late to still make s=
omething about it?


Answer from Mousumi Paul


Hi,

I'm 28 right now and at your age I didn't even realized that I'm wasting my=
 life until I reached the age 26. I wasted my initial and valuable days sim=
ply thinking tha=20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw1fDF8Mjg3ODYwNjI5In0%3D&al_pri=3D8&aoid=3D1=
C8JCjd4FUP&aoty=3D1&aty=3D4&cp=3D5&et=3D2&id=3D09fd615fb69b4b2886664efc509a=
cc2f&uid=3Dz4oDGokmNKD
-----
Question: I received a TCS offer letter on the 16th of July 2024. When will=
 I be joining?


Answer from Harshit Joshi


I get offer letter from TCS for digital role on July 16, 2024 but I still w=
aiting currently March 2025 . I don=E2=80=99t know when would I receive joi=
ning letter after how more mo=20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw2fDF8MTQ3Nzc0Mzg0ODI4NzUwMSJ9&al_pri=3D8&ao=
id=3DXMeXenbHuxa&aoty=3D1&aty=3D4&cp=3D6&et=3D2&id=3D09fd615fb69b4b2886664e=
fc509acc2f&uid=3Dz4oDGokmNKD
-----


JEE ADVANCED RESULTS OUT!!!
I was on a trip with my friends and was in train sleeping till 7 am . Once =
I woke up I checked whatsapp and my friend told results were out. So I logg=
ed in entering my cred...



Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw3fDEwfDIyNDg3NjY0NSJ9&al_pri=3D8&aoid=3DatZ=
OBsVHSt6&aoty=3D4&aty=3D4&cp=3D7&et=3D2&id=3D09fd615fb69b4b2886664efc509acc=
2f&uid=3Dz4oDGokmNKD

-----
Question: What was your 12th standard score?


Answer from Hemant Golhar


I opted for Science although I was not interested in it. I was just going t=
o prepare for competitive exams after 12th. Also I lacked guidance. I was t=
errible in Chemistry =20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw4fDF8MTQ3Nzc0MzcxMjYwMTMyOCJ9&al_pri=3D8&ao=
id=3Dm009JqpjEtj&aoty=3D1&aty=3D4&cp=3D8&et=3D2&id=3D09fd615fb69b4b2886664e=
fc509acc2f&uid=3Dz4oDGokmNKD
-----
Question: Will a smoker=E2=80=99s lungs clean themselves if they quit smoki=
ng and how long does it take?


Answer from Bill Black


I smoked from 17 to 65. Two packs a day until around 45 when I went to a pa=
ck a day. I also smoked weed the entire time. At 65, the VA diagnosed me wi=
th stage 4 COPD. Afte=20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw5fDF8MTQ3Nzc0MzgzODg1MDU2MyJ9&al_pri=3D8&ao=
id=3DY8JMgJUsCW&aoty=3D1&aty=3D4&cp=3D9&et=3D2&id=3D09fd615fb69b4b2886664ef=
c509acc2f&uid=3Dz4oDGokmNKD
-----
Question: I am 44. How much SIP should I do every month to have a sum of 3 =
crore at 60?


Answer from Bharat


I am not a financial advisor. But here is what i am doing.=20
Mutual Fund:
SIP in Axis Small Cap (Rs7000/month)
SIP in SBI Contra (Rs8000/month)
Quant Small Cap (Rs10k/month=20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxMHwxfDE0Nzc3NDM4MTQ2NDI4OTEifQ%3D%3D&al_pr=
i=3D8&aoid=3DLUrJopSQm34&aoty=3D1&aty=3D4&cp=3D10&et=3D2&id=3D09fd615fb69b4=
b2886664efc509acc2f&uid=3Dz4oDGokmNKD
-----
Question: Is ISKCON a scam?


Answer from Sahil Masroor


I am an Indian Muslim and during my college days. I regularly visited that =
place (we have Iskon Temple in Jaipur). I never found anyone asking for mon=
ey and in the evening=20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxMXwxfDU2NzgyMzkxIn0%3D&al_pri=3D8&aoid=3DF=
c3SKm6Tqoi&aoty=3D1&aty=3D4&cp=3D11&et=3D2&id=3D09fd615fb69b4b2886664efc509=
acc2f&uid=3Dz4oDGokmNKD
-----
Question: What is the in-hand salary a recently joined engineer at BHEL rec=
eives?


Answer from Nitish Kumar(=E0=A4=A8=E0=A5=80=E0=A4=A4=E0=A5=80=E0=A4=B6 =E0=
=A4=95=E0=A5=81=E0=A4=AE=E0=A4=BE=E0=A4=B0)


BHEL has a pay structure of =E2=82=B950,000=E2=80=93=E2=82=B91,60,000 for n=
ew joiners.

This is the salary slip for new joiners , the in-hand salary during the one=
-year training period is around =20
Read More: https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXN=
oIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxMnwxfDE0Nzc3NDM4Njc3ODcyMzUifQ%3D%3D&al_pr=
i=3D8&aoid=3Do5ZpnDUavFF&aoty=3D1&aty=3D4&cp=3D12&et=3D2&id=3D09fd615fb69b4=
b2886664efc509acc2f&uid=3Dz4oDGokmNKD
-----

-----

To control which emails we send you, visit: https://www.quora.com/qemail/tc=
?aoid&aoty=3D14&aty=3D4&cp=3D0&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f=
&uid=3Dz4oDGokmNKD

To unsubscribe from this type of email, visit: https://www.quora.com/email_=
optout/qemail_unsubscribe?email_track_id=3D09fd615fb69b4b2886664efc509acc2f=
&t=3D1754335576175076&token=3D9f8b7e9c53c306157f981b3916cef82dadcff06b02f37=
b0bed432eef7d3b50ee54f08b263bfe65f9fbc7b80dd0943ab81a21a11a4ed6bd1c463370ef=
95d03ec0&type=3D2&uid=3D3062852667
--===============0747052398799050625==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<!doctype html><html lang=3D"en" xmlns=3D"http://www.w3.org/1999/xhtml" xml=
ns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:v=3D"urn:schemas-mic=
rosoft-com:vml"><head><title>I am Tejaswini (Ruby). 23 years old girl and a=
n elder child. I am very disappointed wi...</title><!--[if !mso]><!--><meta=
 content=3D"IE=3Dedge" http-equiv=3D"X-UA-Compatible"><!--<![endif]--><meta=
 content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Type"><meta c=
ontent=3D"width=3Ddevice-width,initial-scale=3D1" name=3D"viewport"><style>=
#outlook a { padding:0; }
          body { margin:0;padding:0;-webkit-text-size-adjust:100%;-ms-text-=
size-adjust:100%; }
          table, td { border-collapse:collapse;mso-table-lspace:0pt;mso-tab=
le-rspace:0pt; }
          img { border:0;height:auto;line-height:100%; outline:none;text-de=
coration:none;-ms-interpolation-mode:bicubic; }
          p { display:block;margin:13px 0; }</style><!--[if mso]>
        <noscript>
        <xml>
        <o:OfficeDocumentSettings>
          <o:AllowPNG/>
          <o:PixelsPerInch>96</o:PixelsPerInch>
        </o:OfficeDocumentSettings>
        </xml>
        </noscript>
        <![endif]--><!--[if lte mso 11]>
        <style type=3D"text/css">
          .mj-outlook-group-fix { width:100% !important; }
        </style>
        <![endif]--><style>@media only screen and (min-width:480px) {
        .mj-column-per-100 { width:100% !important; max-width: 100%; }
      }</style><style media=3D"screen and (min-width:480px)">.moz-text-html=
 .mj-column-per-100 { width:100% !important; max-width: 100%; }</style><sty=
le>@media only screen and (max-width:480px) {
      table.mj-full-width-mobile { width: 100% !important; }
      td.mj-full-width-mobile { width: auto !important; }
    }</style></head><body style=3D"word-spacing:normal;"><div style=3D"disp=
lay:none;font-size:1px;color:#ffffff;line-height:1px;max-height:0px;max-wid=
th:0px;opacity:0;overflow:hidden;">I am Tejaswini (Ruby). 23 years old girl=
 and an elder child. I am very disappointed with my life. I don't understan=
d what to do. From January 2025 my life took an unexpected turn. I was sati=
sf=E2=80=A6</div><div style=3D"max-width: 525px; margin: 0 auto; text-align=
: center; padding: 0 4px 16px;" class=3D"emailBody"><table style=3D"width:1=
00%;" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" role=3D"presentation=
" align=3D"center"><tbody><tr><td><!--[if mso | IE]><table align=3D"center"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"" role=3D"presen=
tation" style=3D"width:525px;" width=3D"525" ><tr><td style=3D"line-height:=
0px;font-size:0px;mso-line-height-rule:exactly;"><![endif]--><div style=3D"=
margin:0px auto;max-width:525px;"><table style=3D"width:100%;" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" role=3D"presentation" align=3D"center"=
><tbody><tr><td style=3D"direction:ltr;font-size:0px;padding:0px;padding-bo=
ttom:24px;padding-top:16px;text-align:center;"><!--[if mso | IE]><table rol=
e=3D"presentation" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"><tr><td=
 class=3D"centered-group-outlook" style=3D"width:525px;" ><![endif]--><div =
style=3D"font-size: 0; line-height: 0; display: inline-block; width: 100%; =
direction: ltr; text-align: center;" class=3D"mj-column-per-100 mj-outlook-=
group-fix centered-group"><!--[if mso | IE]><table border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" role=3D"presentation" ><tr><td style=3D"vertical-a=
lign:top;width:525px;" ><![endif]--><div style=3D"font-size:0px;text-align:=
left;direction:ltr;display:inline-block;vertical-align:top;width:100%;" cla=
ss=3D"mj-column-per-100 mj-outlook-group-fix"><table style=3D"vertical-alig=
n:top;" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" rol=
e=3D"presentation"><tbody><tr><td style=3D"font-size:0px;padding:0px;word-b=
reak:break-word;" align=3D"center" class=3D"of-contain"><table style=3D"bor=
der-collapse:collapse;border-spacing:0px;" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" role=3D"presentation"><tbody><tr><td style=3D"width:1px;">=
<img alt height=3D"1" src=3D"https://www.quora.com/qemail/mark_read?ct=3D17=
54335576147227&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&request_id=3D20=
6963022430942856&src=3D1&st=3D1754335576147227&stories=3D10_IdYB2v2hZuu%7C1=
_Lb7j2W4GtI7%7C1_oPuovaLTZ71%7C1_jS3uQwx85SH%7C1_1C8JCjd4FUP%7C1_XMeXenbHux=
a%7C10_atZOBsVHSt6%7C1_m009JqpjEtj%7C1_Y8JMgJUsCW%7C1_LUrJopSQm34%7C1_Fc3SK=
m6Tqoi%7C1_o5ZpnDUavFF&uid=3Dz4oDGokmNKD&v=3D0" style=3D"object-fit: contai=
n; border: 0; display: block; outline: none; text-decoration: none; height:=
 1px; width: 100%; font-size: 13px;" width=3D"1"></td></tr></tbody></table>=
</td></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:break-word;=
"><div style=3D"height:5px;line-height:5px;">=E2=80=8A</div></td></tr><tr><=
td style=3D"font-size:0px;padding:0px;word-break:break-word;" align=3D"left=
"><table style=3D"color:#000000;font-family:system-ui, Segoe UI, sans-serif=
;font-size:13px;line-height:22px;table-layout:auto;width:100%;border:none;"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tr><td st=
yle=3D"float:left" width=3D"75%"><div style=3D"padding:0" dir=3D"ltr"><p st=
yle=3D"font-family: system-ui, Segoe UI, sans-serif; font-weight: normal; f=
ont-size: 12px; line-height: 1.5; color: #171717; text-transform: uppercase=
; letter-spacing: -0.5px; text-align: left; margin: 0;">Top stories for Ayu=
sh</p></div></td><td style=3D"float:right"><a href=3D"https://www.quora.com=
/qemail/tc?aoid&aoty=3D7&aty=3D4&cp=3D0&et=3D2&id=3D09fd615fb69b4b2886664ef=
c509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:underline"><img alt=
=3D"Quora" height=3D"15.202702702702702" src=3D"http://qsf.fs.quoracdn.net/=
-4-images.logo.WordmarkLogo_592x200_4x.png-26-b469cd653dba282b.png" style=
=3D"text-decoration:none;display:block;border:0;outline:none;width:45px;hei=
ght:15.202702702702702px;float:none;padding:0;margin:none" align=3D"none" w=
idth=3D"45"></a></td></tr></table></td></tr><tr><td style=3D"font-size:0px;=
padding:0px;padding-top:4px;padding-bottom:0px;word-break:break-word;" alig=
n=3D"center"><p style=3D"border-top: solid 1px #dee0e1; font-size: 1px; wid=
th: 100%; margin: 0;"></p><!--[if mso | IE]><table align=3D"center" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"border-top:solid 1px #d=
ee0e1;font-size:1px;margin:0px auto;width:525px;" role=3D"presentation" wid=
th=3D"525px" ><tr><td style=3D"height:0;line-height:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxfDEwfDIyNzgyNjMyOSJ9=
&al_pri=3D0&aoid=3DIdYB2v2hZuu&aoty=3D4&aty=3D4&cp=3D1&et=3D2&id=3D09fd615f=
b69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none;=
 color: inherit;"><span style=3D"color:#333333"><span></span></span></a></d=
iv></td></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:break-wo=
rd;" align=3D"left"><div style=3D"font-family:system-ui, Segoe UI, sans-ser=
if;font-size:15px;line-height:1.6;text-align:left;color:#333333;"><div><tab=
le><tr><td valign=3D"top"><div style=3D"padding:0;padding-bottom:4px" dir=
=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-family: system=
-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.5; color: #33333=
3; text-align: left; margin: 0;"><a href=3D"https://www.quora.com/qemail/tc=
?aoid=3Dzg09bdgStnQ&aoty=3D3&aty=3D4&cp=3D1&et=3D2&id=3D09fd615fb69b4b28866=
64efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none; color: inh=
erit;"><span style=3D"color:#333333"><span style=3D"font-weight:700">Tejasw=
ini Trivedi</span></span></a><span>, lives in Nagpur, Maharashtra, India (2=
024-present)</span><span style=3D"color:#636466"> =E2=80=A2 </span><a href=
=3D"https://www.quora.com/qemail/tc?aoid=3DIdYB2v2hZuu&aoty=3D4&aty=3D4&cp=
=3D1&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=
=3D"text-decoration: none; color: inherit;"><span style=3D"color:#636466">P=
osted Jul 11</span></a></p></div></td></tr></table></div></div></td></tr><t=
r><td style=3D"font-size:0px;padding:0px;word-break:break-word;" align=3D"l=
eft"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font-size:15=
px;line-height:1.4;text-align:left;color:#333333;"><a href=3D"https://www.q=
uora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk=
0Mjg1NnwxfDEwfDIyNzgyNjMyOSJ9&al_pri=3D0&aoid=3DIdYB2v2hZuu&aoty=3D4&aty=3D=
4&cp=3D1&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" st=
yle=3D"text-decoration:none;color:#333333"><span style=3D"color:#333333"><i=
mg alt height=3D"auto" src=3D"https://qph.fs.quoracdn.net/main-qimg-58ea683=
9056208027e6e83519a461af0" style=3D"text-decoration:none;display:block;bord=
er:0;outline:none;max-height:100px;max-width:200px;float:right;padding:0;pa=
dding-left:4px;margin:auto" align=3D"right"><div style=3D"padding:0;padding=
-bottom:16px;display:inline" dir=3D"ltr"><p style=3D"font-family: system-ui=
, Segoe UI, sans-serif; font-size: 15px; line-height: 1.4; color: #333333; =
text-align: left; display: inline; margin: 0;"><span>I am Tejaswini (Ruby).=
 23 years old girl and an elder child. I am very disappointed with my life.=
 I don't understand what to do. From January 2025 my life took an unexpecte=
d turn. I was satisfied w...</span></p></div><span> </span><div style=3D"pa=
dding:0;display:inline" dir=3D"ltr"><p style=3D"font-family: system-ui, Seg=
oe UI, sans-serif; font-size: 15px; line-height: 1.6; color: #168de9; text-=
align: left; display: inline; margin: 0;">Read more =C2=BB</p></div></span>=
</a></div></td></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:b=
reak-word;" align=3D"left"><div style=3D"font-family:system-ui, Segoe UI, s=
ans-serif;font-size:15px;line-height:1.6;text-align:left;color:#333333;"><d=
iv style=3D"padding-top:8px"><table><tr><td><a href=3D"https://www.quora.co=
m/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nn=
wxfDEwfDIyNzgyNjMyOSJ9&al_pri=3D0&aoid=3DIdYB2v2hZuu&aoty=3D4&aty=3D4&cp=3D=
1&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"=
text-decoration:underline"><img alt=3D"Upvote" height=3D"20" src=3D"https:/=
/qsf.fs.quoracdn.net/-4-ans_frontend_assets.icons.upvote_20_retina.png-26-3=
d9494ab59c37e56.png" style=3D"text-decoration:none;display:block;border:0;o=
utline:none;height:20px;float:none;padding:0;margin:auto" align=3D"none"></=
a></td><td style=3D"padding-right:16px"><a href=3D"https://www.quora.com/qe=
mail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxfD=
EwfDIyNzgyNjMyOSJ9&al_pri=3D0&aoid=3DIdYB2v2hZuu&aoty=3D4&aty=3D4&cp=3D1&et=
=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text=
-decoration:none"><div style=3D"padding:0" dir=3D"ltr" class=3D"text-pass-c=
olor-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; fo=
nt-size: 13px; line-height: 1.2; color: #636466; text-align: left; margin: =
0;">135</p></div></a></td><td><a href=3D"https://www.quora.com/qemail/tc?al=
_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxfDEwfDIyNzgy=
NjMyOSJ9&al_pri=3D0&aoid=3DIdYB2v2hZuu&aoty=3D4&aty=3D4&cp=3D1&et=3D2&id=3D=
09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoratio=
n:underline"><img alt=3D"Comment" height=3D"20" src=3D"https://qsf.fs.quora=
cdn.net/-4-ans_frontend_assets.icons.comment_20_retina.png-26-4dbd4e9124f23=
bec.png" style=3D"text-decoration:none;display:block;border:0;outline:none;=
height:20px;float:none;padding:0;margin:auto" align=3D"none"></a></td><td s=
tyle=3D"padding-right:16px"><a href=3D"https://www.quora.com/qemail/tc?al_i=
mp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxfDEwfDIyNzgyNj=
MyOSJ9&al_pri=3D0&aoid=3DIdYB2v2hZuu&aoty=3D4&aty=3D4&cp=3D1&et=3D2&id=3D09=
fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:=
none"><div style=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-link=
s"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size: 13p=
x; line-height: 1.2; color: #636466; text-align: left; margin: 0;">170</p><=
/div></a></td></tr></table></div></div></td></tr><tr><td style=3D"font-size=
:0px;padding:0px;padding-top:16px;padding-right:25%;padding-bottom:0px;padd=
ing-left:25%;word-break:break-word;" align=3D"center"><p style=3D"border-to=
p: solid 0.5px #dee0e1; font-size: 1px; width: 100%; margin: 0;"></p><!--[i=
f mso | IE]><table align=3D"center" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"border-top:solid 0.5px #dee0e1;font-size:1px;margin:0px =
auto;width:475px;" role=3D"presentation" width=3D"475px" ><tr><td style=3D"=
height:0;line-height:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwyfDF8MTQ3Nzc0MzcwMTI3=
ODE1MiJ9&al_pri=3D1&aoid=3DoUhmCxE2Ux8&aoty=3D2&aty=3D4&cp=3D2&et=3D2&id=3D=
09fd615fb69b4b2886664efc509acc2f&q_aid=3DLb7j2W4GtI7&uid=3Dz4oDGokmNKD" sty=
le=3D"text-decoration: none; color: inherit;"><span style=3D"color:#333333"=
><span>What is the salary of an SBI PO officer?</span></span></a></div></td=
></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:break-word;" al=
ign=3D"left"><table style=3D"color:#000000;font-family:system-ui, Segoe UI,=
 sans-serif;font-size:13px;line-height:22px;table-layout:auto;width:100%;bo=
rder:none;" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"=
><tr><td valign=3D"middle"><div style=3D"padding:0;padding-bottom:4px" dir=
=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-family: system=
-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.2; color: #33333=
3; text-align: left; margin: 0;"><span style=3D"font-weight:700">S.P.Pop. M=
usic</span><span style=3D"color:#636466"> =E2=80=A2 </span><a href=3D"https=
://www.quora.com/qemail/tc?aoid=3DLb7j2W4GtI7&aoty=3D1&aty=3D4&cp=3D2&et=3D=
2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-de=
coration: none; color: inherit;"><span style=3D"color:#636466">Answered Oct=
ober 11, 2023</span></a></p></div></td></tr></table></td></tr><tr><td style=
=3D"font-size:0px;padding:0px;word-break:break-word;" align=3D"left"><div s=
tyle=3D"font-family:system-ui, Segoe UI, sans-serif;font-size:16px;line-hei=
ght:1.6;text-align:left;color:#333333;"><a href=3D"https://www.quora.com/qe=
mail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwyfD=
F8MTQ3Nzc0MzcwMTI3ODE1MiJ9&al_pri=3D0&aoid=3DLb7j2W4GtI7&aoty=3D1&aty=3D4&c=
p=3D2&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=
=3D"text-decoration:none;color:#333333"><span style=3D"color:#333333"><img =
alt height=3D"auto" src=3D"https://qph.fs.quoracdn.net/main-qimg-bdde35de79=
b6018ba1009d6f78105957" style=3D"text-decoration:none;display:block;border:=
0;outline:none;max-height:100px;max-width:200px;float:right;padding:0;paddi=
ng-left:4px;margin:auto" align=3D"right"><div style=3D"padding:0;padding-bo=
ttom:16px;display:inline" dir=3D"ltr" class=3D"text-pass-color-to-links"><p=
 style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size: 16px; li=
ne-height: 1.6; color: #333333; text-align: left; display: inline; margin: =
0;"><span>Clarification -</span></p></div><span> </span><div style=3D"paddi=
ng:0;padding-bottom:16px;display:inline" dir=3D"ltr" class=3D"text-pass-col=
or-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font=
-size: 16px; line-height: 1.6; color: #333333; text-align: left; display: i=
nline; margin: 0;"><span style=3D"font-style:italic">Basic</span><span styl=
e=3D"font-style:italic"> </span><span>- 48170/- (After 2 annual increments =
of 1490/- and 2 increments of 1490/- for JAIIB and CAIIB)</span></p></div><=
span> </span><div style=3D"padding:0;padding-bottom:16px;display:inline" di=
r=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-family: syste=
m-ui, Segoe UI, sans-serif; font-size: 16px; line-height: 1.6; color: #3333=
33; text-align: left; display: inline; margin: 0;"><span>(My basic during m=
y joining was about 41960/-)</span></p></div><span> </span><div style=3D"pa=
dding:0;padding-bottom:16px;display:inline" dir=3D"ltr" class=3D"text-pass-=
color-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; f=
ont-size: 16px; line-height: 1.6; color: #333333; text-align: left; display=
: inline; margin: 0;"><span style=3D"font-style:italic">DA</span><span> - 2=
3642/...</span></p></div><span> </span><div style=3D"padding:0;display:inli=
ne" dir=3D"ltr"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; f=
ont-size: 16px; line-height: 1.6; color: #168de9; text-align: left; display=
: inline; margin: 0;">Read more =C2=BB</p></div><mj-text align=3D"left" col=
or=3D"#333333" css-class=3D"  " font-family=3D"system-ui, Segoe UI, sans-se=
rif" font-size=3D"15px" line-height=3D"1.6" padding=3D"0px"><div style=3D"p=
adding-top:8px"><table><tr><td><img alt=3D"Upvote" height=3D"20" src=3D"htt=
ps://qsf.fs.quoracdn.net/-4-ans_frontend_assets.icons.upvote_20_retina.png-=
26-3d9494ab59c37e56.png" style=3D"text-decoration:none;display:block;border=
:0;outline:none;height:20px;float:none;padding:0;margin:auto" align=3D"none=
"></td><td style=3D"padding-right:16px"><div style=3D"padding:0" dir=3D"ltr=
" class=3D"text-pass-color-to-links"><p style=3D"font-family: system-ui, Se=
goe UI, sans-serif; font-size: 13px; line-height: 1.2; color: #636466; text=
-align: left; margin: 0;">1K</p></div></td><td><img alt=3D"Comment" height=
=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.icons.com=
ment_20_retina.png-26-4dbd4e9124f23bec.png" style=3D"text-decoration:none;d=
isplay:block;border:0;outline:none;height:20px;float:none;padding:0;margin:=
auto" align=3D"none"></td><td style=3D"padding-right:16px"><div style=3D"pa=
dding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-fa=
mily: system-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.2; c=
olor: #636466; text-align: left; margin: 0;">125</p></div></td></tr></table=
></div></mj-text></span></a></div></td></tr><tr><td style=3D"font-size:0px;=
padding:0px;padding-top:16px;padding-right:25%;padding-bottom:0px;padding-l=
eft:25%;word-break:break-word;" align=3D"center"><p style=3D"border-top: so=
lid 0.5px #dee0e1; font-size: 1px; width: 100%; margin: 0;"></p><!--[if mso=
 | IE]><table align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"border-top:solid 0.5px #dee0e1;font-size:1px;margin:0px aut=
o;width:475px;" role=3D"presentation" width=3D"475px" ><tr><td style=3D"hei=
ght:0;line-height:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwzfDF8MTQ3Nzc0Mzg1MTgx=
MzA5NSJ9&al_pri=3D1&aoid=3DYkB1u1tloW8&aoty=3D2&aty=3D4&cp=3D3&et=3D2&id=3D=
09fd615fb69b4b2886664efc509acc2f&q_aid=3DoPuovaLTZ71&uid=3Dz4oDGokmNKD" sty=
le=3D"text-decoration: none; color: inherit;"><span style=3D"color:#333333"=
><span>Can u share ur CGL 2024 final scorecard?</span></span></a></div></td=
></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:break-word;" al=
ign=3D"left"><table style=3D"color:#000000;font-family:system-ui, Segoe UI,=
 sans-serif;font-size:13px;line-height:22px;table-layout:auto;width:100%;bo=
rder:none;" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"=
><tr><td valign=3D"middle"><div style=3D"padding:0;padding-bottom:4px" dir=
=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-family: system=
-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.2; color: #33333=
3; text-align: left; margin: 0;"><span style=3D"font-weight:700">Dushyant T=
iwari</span><span>, UPSC Aspirant</span><span style=3D"color:#636466"> =E2=
=80=A2 </span><a href=3D"https://www.quora.com/qemail/tc?aoid=3DoPuovaLTZ71=
&aoty=3D1&aty=3D4&cp=3D3&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=
=3Dz4oDGokmNKD" style=3D"text-decoration: none; color: inherit;"><span styl=
e=3D"color:#636466">Answered March 26</span></a></p></div></td></tr></table=
></td></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:break-word=
;" align=3D"left"><div style=3D"font-family:system-ui, Segoe UI, sans-serif=
;font-size:16px;line-height:1.6;text-align:left;color:#333333;"><a href=3D"=
https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNj=
k2MzAyMjQzMDk0Mjg1NnwzfDF8MTQ3Nzc0Mzg1MTgxMzA5NSJ9&al_pri=3D0&aoid=3DoPuova=
LTZ71&aoty=3D1&aty=3D4&cp=3D3&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&=
uid=3Dz4oDGokmNKD" style=3D"text-decoration:none;color:#333333"><span style=
=3D"color:#333333"><img alt height=3D"auto" src=3D"https://qph.fs.quoracdn.=
net/main-qimg-9d5351cdbf8f1bda49ddce66017b5f1a" style=3D"text-decoration:no=
ne;display:block;border:0;outline:none;max-height:100px;max-width:200px;flo=
at:right;padding:0;padding-left:4px;margin:auto" align=3D"right"><div style=
=3D"padding:0;padding-bottom:16px;display:inline" dir=3D"ltr" class=3D"text=
-pass-color-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-se=
rif; font-size: 16px; line-height: 1.6; color: #333333; text-align: left; d=
isplay: inline; margin: 0;"><span>Shift 18th Jan</span></p></div><span> </s=
pan><div style=3D"padding:0;padding-bottom:16px;display:inline" dir=3D"ltr"=
 class=3D"text-pass-color-to-links"><p style=3D"font-family: system-ui, Seg=
oe UI, sans-serif; font-size: 16px; line-height: 1.6; color: #333333; text-=
align: left; display: inline; margin: 0;"><span>Raw marks - 327</span></p><=
/div><span> </span><div style=3D"padding:0;padding-bottom:16px;display:inli=
ne" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-family:=
 system-ui, Segoe UI, sans-serif; font-size: 16px; line-height: 1.6; color:=
 #333333; text-align: left; display: inline; margin: 0;"><span>Final marks =
- 351</span></p></div><span> </span><div style=3D"padding:0;padding-bottom:=
16px;display:inline" dir=3D"ltr" class=3D"text-pass-color-to-links"><p styl=
e=3D"font-family: system-ui, Segoe UI, sans-serif; font-size: 16px; line-he=
ight: 1.6; color: #333333; text-align: left; display: inline; margin: 0;"><=
span>Got Inspector (Examiner)...</span></p></div><span> </span><div style=
=3D"padding:0;display:inline" dir=3D"ltr"><p style=3D"font-family: system-u=
i, Segoe UI, sans-serif; font-size: 16px; line-height: 1.6; color: #168de9;=
 text-align: left; display: inline; margin: 0;">Read more =C2=BB</p></div><=
mj-text align=3D"left" color=3D"#333333" css-class=3D"  " font-family=3D"sy=
stem-ui, Segoe UI, sans-serif" font-size=3D"15px" line-height=3D"1.6" paddi=
ng=3D"0px"><div style=3D"padding-top:8px"><table><tr><td><img alt=3D"Upvote=
" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.i=
cons.upvote_20_retina.png-26-3d9494ab59c37e56.png" style=3D"text-decoration=
:none;display:block;border:0;outline:none;height:20px;float:none;padding:0;=
margin:auto" align=3D"none"></td><td style=3D"padding-right:16px"><div styl=
e=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"=
font-family: system-ui, Segoe UI, sans-serif; font-size: 13px; line-height:=
 1.2; color: #636466; text-align: left; margin: 0;">224</p></div></td><td><=
img alt=3D"Comment" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans=
_frontend_assets.icons.comment_20_retina.png-26-4dbd4e9124f23bec.png" style=
=3D"text-decoration:none;display:block;border:0;outline:none;height:20px;fl=
oat:none;padding:0;margin:auto" align=3D"none"></td><td style=3D"padding-ri=
ght:16px"><div style=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-=
links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size:=
 13px; line-height: 1.2; color: #636466; text-align: left; margin: 0;">39</=
p></div></td></tr></table></div></mj-text></span></a></div></td></tr><tr><t=
d style=3D"font-size:0px;padding:0px;padding-top:16px;padding-right:25%;pad=
ding-bottom:0px;padding-left:25%;word-break:break-word;" align=3D"center"><=
p style=3D"border-top: solid 0.5px #dee0e1; font-size: 1px; width: 100%; ma=
rgin: 0;"></p><!--[if mso | IE]><table align=3D"center" border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"border-top:solid 0.5px #dee0e1;font-=
size:1px;margin:0px auto;width:475px;" role=3D"presentation" width=3D"475px=
" ><tr><td style=3D"height:0;line-height:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw0fDF8MTQ3Nzc0MzgzMzMw=
NTYzMCJ9&al_pri=3D1&aoid=3DQlcrLIUfj&aoty=3D2&aty=3D4&cp=3D4&et=3D2&id=3D09=
fd615fb69b4b2886664efc509acc2f&q_aid=3DjS3uQwx85SH&uid=3Dz4oDGokmNKD" style=
=3D"text-decoration: none; color: inherit;"><span style=3D"color:#333333"><=
span>I was terminated on a Thursday and they needed my services for the fol=
lowing Monday. I was a salary employee. Would they have to rehire me back f=
or my service?</span></span></a></div></td></tr><tr><td style=3D"font-size:=
0px;padding:0px;word-break:break-word;" align=3D"left"><table style=3D"colo=
r:#000000;font-family:system-ui, Segoe UI, sans-serif;font-size:13px;line-h=
eight:22px;table-layout:auto;width:100%;border:none;" border=3D"0" cellpadd=
ing=3D"0" cellspacing=3D"0" width=3D"100%"><tr><td valign=3D"middle"><div s=
tyle=3D"padding:0;padding-bottom:4px" dir=3D"ltr" class=3D"text-pass-color-=
to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-si=
ze: 13px; line-height: 1.2; color: #333333; text-align: left; margin: 0;"><=
span style=3D"font-weight:700">Doc Wittmer</span><span>, PhD Engineering & =
Materials Science and Engineering, University of Illinois at U...</span><sp=
an style=3D"color:#636466"> =E2=80=A2 </span><a href=3D"https://www.quora.c=
om/qemail/tc?aoid=3DjS3uQwx85SH&aoty=3D1&aty=3D4&cp=3D4&et=3D2&id=3D09fd615=
fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none=
; color: inherit;"><span style=3D"color:#636466">Answered December 19, 2024=
</span></a></p></div></td></tr></table></td></tr><tr><td style=3D"font-size=
:0px;padding:0px;word-break:break-word;" align=3D"left"><div style=3D"font-=
family:system-ui, Segoe UI, sans-serif;font-size:16px;line-height:1.6;text-=
align:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_im=
p=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw0fDF8MTQ3Nzc0Mzg=
zMzMwNTYzMCJ9&al_pri=3D0&aoid=3DjS3uQwx85SH&aoty=3D1&aty=3D4&cp=3D4&et=3D2&=
id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-deco=
ration:none;color:#333333"><span style=3D"color:#333333"><div style=3D"padd=
ing:0;padding-bottom:16px;display:inline" dir=3D"ltr" class=3D"text-pass-co=
lor-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; fon=
t-size: 16px; line-height: 1.6; color: #333333; text-align: left; display: =
inline; margin: 0;"><span>I was laid off on a Friday and told to have my be=
longings removed from the company under security guard by Monday. In about =
2 weeks I got a call to come finish an important...</span></p></div><span> =
</span><div style=3D"padding:0;display:inline" dir=3D"ltr"><p style=3D"font=
-family: system-ui, Segoe UI, sans-serif; font-size: 16px; line-height: 1.6=
; color: #168de9; text-align: left; display: inline; margin: 0;">Read more =
=C2=BB</p></div><mj-text align=3D"left" color=3D"#333333" css-class=3D"  " =
font-family=3D"system-ui, Segoe UI, sans-serif" font-size=3D"15px" line-hei=
ght=3D"1.6" padding=3D"0px"><div style=3D"padding-top:8px"><table><tr><td><=
img alt=3D"Upvote" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_=
frontend_assets.icons.upvote_20_retina.png-26-3d9494ab59c37e56.png" style=
=3D"text-decoration:none;display:block;border:0;outline:none;height:20px;fl=
oat:none;padding:0;margin:auto" align=3D"none"></td><td style=3D"padding-ri=
ght:16px"><div style=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-=
links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size:=
 13px; line-height: 1.2; color: #636466; text-align: left; margin: 0;">13.9=
K</p></div></td><td><img alt=3D"Comment" height=3D"20" src=3D"https://qsf.f=
s.quoracdn.net/-4-ans_frontend_assets.icons.comment_20_retina.png-26-4dbd4e=
9124f23bec.png" style=3D"text-decoration:none;display:block;border:0;outlin=
e:none;height:20px;float:none;padding:0;margin:auto" align=3D"none"></td><t=
d style=3D"padding-right:16px"><div style=3D"padding:0" dir=3D"ltr" class=
=3D"text-pass-color-to-links"><p style=3D"font-family: system-ui, Segoe UI,=
 sans-serif; font-size: 13px; line-height: 1.2; color: #636466; text-align:=
 left; margin: 0;">485</p></div></td></tr></table></div></mj-text></span></=
a></div></td></tr><tr><td style=3D"font-size:0px;padding:0px;padding-top:16=
px;padding-right:25%;padding-bottom:0px;padding-left:25%;word-break:break-w=
ord;" align=3D"center"><p style=3D"border-top: solid 0.5px #dee0e1; font-si=
ze: 1px; width: 100%; margin: 0;"></p><!--[if mso | IE]><table align=3D"cen=
ter" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"border-top:s=
olid 0.5px #dee0e1;font-size:1px;margin:0px auto;width:475px;" role=3D"pres=
entation" width=3D"475px" ><tr><td style=3D"height:0;line-height:0;"> &nbsp=
;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw1fDF8Mjg3ODYwNjI5In0%=
3D&al_pri=3D1&aoid=3DRKLvwolQJc2&aoty=3D2&aty=3D4&cp=3D5&et=3D2&id=3D09fd61=
5fb69b4b2886664efc509acc2f&q_aid=3D1C8JCjd4FUP&uid=3Dz4oDGokmNKD" style=3D"=
text-decoration: none; color: inherit;"><span style=3D"color:#333333"><span=
>I am 24 and I have wasted my life. Is it too late to still make something =
about it?</span></span></a></div></td></tr><tr><td style=3D"font-size:0px;p=
adding:0px;word-break:break-word;" align=3D"left"><table style=3D"color:#00=
0000;font-family:system-ui, Segoe UI, sans-serif;font-size:13px;line-height=
:22px;table-layout:auto;width:100%;border:none;" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" width=3D"100%"><tr><td valign=3D"middle"><div styl=
e=3D"padding:0;padding-bottom:4px" dir=3D"ltr" class=3D"text-pass-color-to-=
links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size:=
 13px; line-height: 1.2; color: #333333; text-align: left; margin: 0;"><spa=
n style=3D"font-weight:700">Mousumi Paul</span><span>, Designer by day, Won=
derer at night!</span><span style=3D"color:#636466"> =E2=80=A2 </span><a hr=
ef=3D"https://www.quora.com/qemail/tc?aoid=3D1C8JCjd4FUP&aoty=3D1&aty=3D4&c=
p=3D5&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=
=3D"text-decoration: none; color: inherit;"><span style=3D"color:#636466">U=
pdated January 23, 2022</span></a></p></div></td></tr></table></td></tr><tr=
><td style=3D"font-size:0px;padding:0px;word-break:break-word;" align=3D"le=
ft"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font-size:16p=
x;line-height:1.6;text-align:left;color:#333333;"><a href=3D"https://www.qu=
ora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0=
Mjg1Nnw1fDF8Mjg3ODYwNjI5In0%3D&al_pri=3D0&aoid=3D1C8JCjd4FUP&aoty=3D1&aty=
=3D4&cp=3D5&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD"=
 style=3D"text-decoration:none;color:#333333"><span style=3D"color:#333333"=
><div style=3D"padding:0;padding-bottom:16px;display:inline" dir=3D"ltr" cl=
ass=3D"text-pass-color-to-links"><p style=3D"font-family: system-ui, Segoe =
UI, sans-serif; font-size: 16px; line-height: 1.6; color: #333333; text-ali=
gn: left; display: inline; margin: 0;"><span>Hi,</span></p></div><span> </s=
pan><div style=3D"padding:0;padding-bottom:16px;display:inline" dir=3D"ltr"=
 class=3D"text-pass-color-to-links"><p style=3D"font-family: system-ui, Seg=
oe UI, sans-serif; font-size: 16px; line-height: 1.6; color: #333333; text-=
align: left; display: inline; margin: 0;"><span>I'm 28 right now and at you=
r age I didn't even realized that I'm wasting my life until I reached the a=
ge 26. I wasted my initial and valuable days simply thinking that s...</spa=
n></p></div><span> </span><div style=3D"padding:0;display:inline" dir=3D"lt=
r"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size: 16p=
x; line-height: 1.6; color: #168de9; text-align: left; display: inline; mar=
gin: 0;">Read more =C2=BB</p></div><mj-text align=3D"left" color=3D"#333333=
" css-class=3D"  " font-family=3D"system-ui, Segoe UI, sans-serif" font-siz=
e=3D"15px" line-height=3D"1.6" padding=3D"0px"><div style=3D"padding-top:8p=
x"><table><tr><td><img alt=3D"Upvote" height=3D"20" src=3D"https://qsf.fs.q=
uoracdn.net/-4-ans_frontend_assets.icons.upvote_20_retina.png-26-3d9494ab59=
c37e56.png" style=3D"text-decoration:none;display:block;border:0;outline:no=
ne;height:20px;float:none;padding:0;margin:auto" align=3D"none"></td><td st=
yle=3D"padding-right:16px"><div style=3D"padding:0" dir=3D"ltr" class=3D"te=
xt-pass-color-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-=
serif; font-size: 13px; line-height: 1.2; color: #636466; text-align: left;=
 margin: 0;">17.3K</p></div></td><td><img alt=3D"Comment" height=3D"20" src=
=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.icons.comment_20_ret=
ina.png-26-4dbd4e9124f23bec.png" style=3D"text-decoration:none;display:bloc=
k;border:0;outline:none;height:20px;float:none;padding:0;margin:auto" align=
=3D"none"></td><td style=3D"padding-right:16px"><div style=3D"padding:0" di=
r=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-family: syste=
m-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.2; color: #6364=
66; text-align: left; margin: 0;">2K</p></div></td></tr></table></div></mj-=
text></span></a></div></td></tr><tr><td style=3D"font-size:0px;padding:0px;=
padding-top:16px;padding-right:25%;padding-bottom:0px;padding-left:25%;word=
-break:break-word;" align=3D"center"><p style=3D"border-top: solid 0.5px #d=
ee0e1; font-size: 1px; width: 100%; margin: 0;"></p><!--[if mso | IE]><tabl=
e align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=
=3D"border-top:solid 0.5px #dee0e1;font-size:1px;margin:0px auto;width:475p=
x;" role=3D"presentation" width=3D"475px" ><tr><td style=3D"height:0;line-h=
eight:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw2fDF8MTQ3Nzc0Mzg0ODI4=
NzUwMSJ9&al_pri=3D1&aoid=3DqMH2nVdhXj&aoty=3D2&aty=3D4&cp=3D6&et=3D2&id=3D0=
9fd615fb69b4b2886664efc509acc2f&q_aid=3DXMeXenbHuxa&uid=3Dz4oDGokmNKD" styl=
e=3D"text-decoration: none; color: inherit;"><span style=3D"color:#333333">=
<span>I received a TCS offer letter on the 16th of July 2024. When will I b=
e joining?</span></span></a></div></td></tr><tr><td style=3D"font-size:0px;=
padding:0px;word-break:break-word;" align=3D"left"><table style=3D"color:#0=
00000;font-family:system-ui, Segoe UI, sans-serif;font-size:13px;line-heigh=
t:22px;table-layout:auto;width:100%;border:none;" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" width=3D"100%"><tr><td valign=3D"middle"><div styl=
e=3D"padding:0;padding-bottom:4px" dir=3D"ltr" class=3D"text-pass-color-to-=
links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size:=
 13px; line-height: 1.2; color: #333333; text-align: left; margin: 0;"><spa=
n style=3D"font-weight:700">Harshit Joshi</span><span style=3D"color:#63646=
6"> =E2=80=A2 </span><a href=3D"https://www.quora.com/qemail/tc?aoid=3DXMeX=
enbHuxa&aoty=3D1&aty=3D4&cp=3D6&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2=
f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none; color: inherit;"><span=
 style=3D"color:#636466">Updated March 13</span></a></p></div></td></tr></t=
able></td></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:break-=
word;" align=3D"left"><div style=3D"font-family:system-ui, Segoe UI, sans-s=
erif;font-size:16px;line-height:1.6;text-align:left;color:#333333;"><a href=
=3D"https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIj=
IwNjk2MzAyMjQzMDk0Mjg1Nnw2fDF8MTQ3Nzc0Mzg0ODI4NzUwMSJ9&al_pri=3D0&aoid=3DXM=
eXenbHuxa&aoty=3D1&aty=3D4&cp=3D6&et=3D2&id=3D09fd615fb69b4b2886664efc509ac=
c2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:none;color:#333333"><span s=
tyle=3D"color:#333333"><div style=3D"padding:0;padding-bottom:16px;display:=
inline" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-fam=
ily: system-ui, Segoe UI, sans-serif; font-size: 16px; line-height: 1.6; co=
lor: #333333; text-align: left; display: inline; margin: 0;"><span>I get of=
fer letter from TCS for digital role on July 16, 2024 but I still waiting c=
urrently March 2025 . I don=E2=80=99t know when would I receive joining let=
ter after how more mon...</span></p></div><span> </span><div style=3D"paddi=
ng:0;display:inline" dir=3D"ltr"><p style=3D"font-family: system-ui, Segoe =
UI, sans-serif; font-size: 16px; line-height: 1.6; color: #168de9; text-ali=
gn: left; display: inline; margin: 0;">Read more =C2=BB</p></div><mj-text a=
lign=3D"left" color=3D"#333333" css-class=3D"  " font-family=3D"system-ui, =
Segoe UI, sans-serif" font-size=3D"15px" line-height=3D"1.6" padding=3D"0px=
"><div style=3D"padding-top:8px"><table><tr><td><img alt=3D"Upvote" height=
=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.icons.upv=
ote_20_retina.png-26-3d9494ab59c37e56.png" style=3D"text-decoration:none;di=
splay:block;border:0;outline:none;height:20px;float:none;padding:0;margin:a=
uto" align=3D"none"></td><td style=3D"padding-right:16px"><div style=3D"pad=
ding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-fam=
ily: system-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.2; co=
lor: #636466; text-align: left; margin: 0;">116</p></div></td><td><img alt=
=3D"Comment" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_fronte=
nd_assets.icons.comment_20_retina.png-26-4dbd4e9124f23bec.png" style=3D"tex=
t-decoration:none;display:block;border:0;outline:none;height:20px;float:non=
e;padding:0;margin:auto" align=3D"none"></td><td style=3D"padding-right:16p=
x"><div style=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-links">=
<p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size: 13px; =
line-height: 1.2; color: #636466; text-align: left; margin: 0;">26</p></div=
></td></tr></table></div></mj-text></span></a></div></td></tr><tr><td style=
=3D"font-size:0px;padding:0px;padding-top:16px;padding-right:25%;padding-bo=
ttom:0px;padding-left:25%;word-break:break-word;" align=3D"center"><p style=
=3D"border-top: solid 0.5px #dee0e1; font-size: 1px; width: 100%; margin: 0=
;"></p><!--[if mso | IE]><table align=3D"center" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" style=3D"border-top:solid 0.5px #dee0e1;font-size:=
1px;margin:0px auto;width:475px;" role=3D"presentation" width=3D"475px" ><t=
r><td style=3D"height:0;line-height:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw3fDEwfDIyNDg3NjY0NSJ9=
&al_pri=3D0&aoid=3DatZOBsVHSt6&aoty=3D4&aty=3D4&cp=3D7&et=3D2&id=3D09fd615f=
b69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none;=
 color: inherit;"><span style=3D"color:#333333"><span></span></span></a></d=
iv></td></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:break-wo=
rd;" align=3D"left"><div style=3D"font-family:system-ui, Segoe UI, sans-ser=
if;font-size:15px;line-height:1.6;text-align:left;color:#333333;"><div><tab=
le><tr><td valign=3D"top"><div style=3D"padding:0;padding-bottom:4px" dir=
=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-family: system=
-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.5; color: #33333=
3; text-align: left; margin: 0;"><a href=3D"https://www.quora.com/qemail/tc=
?aoid=3DzMOotXF4OUD&aoty=3D3&aty=3D4&cp=3D7&et=3D2&id=3D09fd615fb69b4b28866=
64efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none; color: inh=
erit;"><span style=3D"color:#333333"><span style=3D"font-weight:700">Abhish=
ek S</span></span></a><span>, B.tech Engineering Physics, Indian Institute =
of Technology, Madras (2029)</span><span style=3D"color:#636466"> =E2=80=A2=
 </span><a href=3D"https://www.quora.com/qemail/tc?aoid=3DatZOBsVHSt6&aoty=
=3D4&aty=3D4&cp=3D7&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oD=
GokmNKD" style=3D"text-decoration: none; color: inherit;"><span style=3D"co=
lor:#636466">Posted Jun 3</span></a></p></div></td></tr></table></div></div=
></td></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:break-word=
;" align=3D"left"><div style=3D"font-family:system-ui, Segoe UI, sans-serif=
;font-size:15px;line-height:1.4;text-align:left;color:#333333;"><a href=3D"=
https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNj=
k2MzAyMjQzMDk0Mjg1Nnw3fDEwfDIyNDg3NjY0NSJ9&al_pri=3D0&aoid=3DatZOBsVHSt6&ao=
ty=3D4&aty=3D4&cp=3D7&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4=
oDGokmNKD" style=3D"text-decoration:none;color:#333333"><span style=3D"colo=
r:#333333"><img alt height=3D"auto" src=3D"https://qph.fs.quoracdn.net/main=
-qimg-88c72690f94d81ec7960b88d78b3df4c" style=3D"text-decoration:none;displ=
ay:block;border:0;outline:none;max-height:100px;max-width:200px;float:right=
;padding:0;padding-left:4px;margin:auto" align=3D"right"><div style=3D"padd=
ing:0;padding-bottom:16px;display:inline" dir=3D"ltr"><p style=3D"font-fami=
ly: system-ui, Segoe UI, sans-serif; font-size: 15px; line-height: 1.4; col=
or: #333333; text-align: left; display: inline; margin: 0;"><span>JEE ADVAN=
CED RESULTS OUT!!!</span></p></div><span> </span><div style=3D"padding:0;pa=
dding-bottom:16px;display:inline" dir=3D"ltr"><p style=3D"font-family: syst=
em-ui, Segoe UI, sans-serif; font-size: 15px; line-height: 1.4; color: #333=
333; text-align: left; display: inline; margin: 0;"><span>I was on a trip w=
ith my friends and was in train sleeping till 7 am . Once I woke up I check=
ed whatsapp and my friend told results were out. So I logged in entering my=
 cr...</span></p></div><span> </span><div style=3D"padding:0;display:inline=
" dir=3D"ltr"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; fon=
t-size: 15px; line-height: 1.6; color: #168de9; text-align: left; display: =
inline; margin: 0;">Read more =C2=BB</p></div></span></a></div></td></tr><t=
r><td style=3D"font-size:0px;padding:0px;word-break:break-word;" align=3D"l=
eft"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font-size:15=
px;line-height:1.6;text-align:left;color:#333333;"><div style=3D"padding-to=
p:8px"><table><tr><td><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw3fDEwfDIyNDg3NjY0NSJ9=
&al_pri=3D0&aoid=3DatZOBsVHSt6&aoty=3D4&aty=3D4&cp=3D7&et=3D2&id=3D09fd615f=
b69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:underl=
ine"><img alt=3D"Upvote" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-=
4-ans_frontend_assets.icons.upvote_20_retina.png-26-3d9494ab59c37e56.png" s=
tyle=3D"text-decoration:none;display:block;border:0;outline:none;height:20p=
x;float:none;padding:0;margin:auto" align=3D"none"></a></td><td style=3D"pa=
dding-right:16px"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3DeyJ0e=
XBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw3fDEwfDIyNDg3NjY0NSJ9&al_=
pri=3D0&aoid=3DatZOBsVHSt6&aoty=3D4&aty=3D4&cp=3D7&et=3D2&id=3D09fd615fb69b=
4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:none"><div=
 style=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p styl=
e=3D"font-family: system-ui, Segoe UI, sans-serif; font-size: 13px; line-he=
ight: 1.2; color: #636466; text-align: left; margin: 0;">230</p></div></a><=
/td><td><a href=3D"https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzM=
sICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw3fDEwfDIyNDg3NjY0NSJ9&al_pri=3D0&ao=
id=3DatZOBsVHSt6&aoty=3D4&aty=3D4&cp=3D7&et=3D2&id=3D09fd615fb69b4b2886664e=
fc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:underline"><img alt=
=3D"Comment" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_fronte=
nd_assets.icons.comment_20_retina.png-26-4dbd4e9124f23bec.png" style=3D"tex=
t-decoration:none;display:block;border:0;outline:none;height:20px;float:non=
e;padding:0;margin:auto" align=3D"none"></a></td><td style=3D"padding-right=
:16px"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMs=
ICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw3fDEwfDIyNDg3NjY0NSJ9&al_pri=3D0&aoi=
d=3DatZOBsVHSt6&aoty=3D4&aty=3D4&cp=3D7&et=3D2&id=3D09fd615fb69b4b2886664ef=
c509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:none"><div style=3D"p=
adding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-f=
amily: system-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.2; =
color: #636466; text-align: left; margin: 0;">57</p></div></a></td></tr></t=
able></div></div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-top:16px;padding-right:25%;padding-bottom:0px;padding-left:25%;word-brea=
k:break-word;" align=3D"center"><p style=3D"border-top: solid 0.5px #dee0e1=
; font-size: 1px; width: 100%; margin: 0;"></p><!--[if mso | IE]><table ali=
gn=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"bor=
der-top:solid 0.5px #dee0e1;font-size:1px;margin:0px auto;width:475px;" rol=
e=3D"presentation" width=3D"475px" ><tr><td style=3D"height:0;line-height:0=
;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw4fDF8MTQ3Nzc0MzcxMjYw=
MTMyOCJ9&al_pri=3D1&aoid=3DjtE3CIOjdha&aoty=3D2&aty=3D4&cp=3D8&et=3D2&id=3D=
09fd615fb69b4b2886664efc509acc2f&q_aid=3Dm009JqpjEtj&uid=3Dz4oDGokmNKD" sty=
le=3D"text-decoration: none; color: inherit;"><span style=3D"color:#333333"=
><span>What was your 12th standard score?</span></span></a></div></td></tr>=
<tr><td style=3D"font-size:0px;padding:0px;word-break:break-word;" align=3D=
"left"><table style=3D"color:#000000;font-family:system-ui, Segoe UI, sans-=
serif;font-size:13px;line-height:22px;table-layout:auto;width:100%;border:n=
one;" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tr><=
td valign=3D"middle"><div style=3D"padding:0;padding-bottom:4px" dir=3D"ltr=
" class=3D"text-pass-color-to-links"><p style=3D"font-family: system-ui, Se=
goe UI, sans-serif; font-size: 13px; line-height: 1.2; color: #333333; text=
-align: left; margin: 0;"><span style=3D"font-weight:700">Hemant Golhar</sp=
an><span>, Probationary Officer at Central Bank of India</span><span style=
=3D"color:#636466"> =E2=80=A2 </span><a href=3D"https://www.quora.com/qemai=
l/tc?aoid=3Dm009JqpjEtj&aoty=3D1&aty=3D4&cp=3D8&et=3D2&id=3D09fd615fb69b4b2=
886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none; color:=
 inherit;"><span style=3D"color:#636466">Answered November 26, 2023</span><=
/a></p></div></td></tr></table></td></tr><tr><td style=3D"font-size:0px;pad=
ding:0px;word-break:break-word;" align=3D"left"><div style=3D"font-family:s=
ystem-ui, Segoe UI, sans-serif;font-size:16px;line-height:1.6;text-align:le=
ft;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3DeyJ0=
eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw4fDF8MTQ3Nzc0MzcxMjYwMTM=
yOCJ9&al_pri=3D0&aoid=3Dm009JqpjEtj&aoty=3D1&aty=3D4&cp=3D8&et=3D2&id=3D09f=
d615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:n=
one;color:#333333"><span style=3D"color:#333333"><img alt height=3D"auto" s=
rc=3D"https://qph.fs.quoracdn.net/main-qimg-75b40336bf527ca04d0c4ab3252a05b=
3" style=3D"text-decoration:none;display:block;border:0;outline:none;max-he=
ight:100px;max-width:200px;float:right;padding:0;padding-left:4px;margin:au=
to" align=3D"right"><div style=3D"padding:0;padding-bottom:16px;display:inl=
ine" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-family=
: system-ui, Segoe UI, sans-serif; font-size: 16px; line-height: 1.6; color=
: #333333; text-align: left; display: inline; margin: 0;"><span>I opted for=
 Science although I was not interested in it. I was just going to prepare f=
or competitive exams after 12th. Also I lacked guidance. I was terrible in =
Chemistry a...</span></p></div><span> </span><div style=3D"padding:0;displa=
y:inline" dir=3D"ltr"><p style=3D"font-family: system-ui, Segoe UI, sans-se=
rif; font-size: 16px; line-height: 1.6; color: #168de9; text-align: left; d=
isplay: inline; margin: 0;">Read more =C2=BB</p></div><mj-text align=3D"lef=
t" color=3D"#333333" css-class=3D"  " font-family=3D"system-ui, Segoe UI, s=
ans-serif" font-size=3D"15px" line-height=3D"1.6" padding=3D"0px"><div styl=
e=3D"padding-top:8px"><table><tr><td><img alt=3D"Upvote" height=3D"20" src=
=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.icons.upvote_20_reti=
na.png-26-3d9494ab59c37e56.png" style=3D"text-decoration:none;display:block=
;border:0;outline:none;height:20px;float:none;padding:0;margin:auto" align=
=3D"none"></td><td style=3D"padding-right:16px"><div style=3D"padding:0" di=
r=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-family: syste=
m-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.2; color: #6364=
66; text-align: left; margin: 0;">732</p></div></td><td><img alt=3D"Comment=
" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.i=
cons.comment_20_retina.png-26-4dbd4e9124f23bec.png" style=3D"text-decoratio=
n:none;display:block;border:0;outline:none;height:20px;float:none;padding:0=
;margin:auto" align=3D"none"></td><td style=3D"padding-right:16px"><div sty=
le=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D=
"font-family: system-ui, Segoe UI, sans-serif; font-size: 13px; line-height=
: 1.2; color: #636466; text-align: left; margin: 0;">145</p></div></td></tr=
></table></div></mj-text></span></a></div></td></tr><tr><td style=3D"font-s=
ize:0px;padding:0px;padding-top:16px;padding-right:25%;padding-bottom:0px;p=
adding-left:25%;word-break:break-word;" align=3D"center"><p style=3D"border=
-top: solid 0.5px #dee0e1; font-size: 1px; width: 100%; margin: 0;"></p><!-=
-[if mso | IE]><table align=3D"center" border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" style=3D"border-top:solid 0.5px #dee0e1;font-size:1px;margin:0=
px auto;width:475px;" role=3D"presentation" width=3D"475px" ><tr><td style=
=3D"height:0;line-height:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw5fDF8MTQ3Nzc0MzgzODg1=
MDU2MyJ9&al_pri=3D1&aoid=3D9wrgRl67hGy&aoty=3D2&aty=3D4&cp=3D9&et=3D2&id=3D=
09fd615fb69b4b2886664efc509acc2f&q_aid=3DY8JMgJUsCW&uid=3Dz4oDGokmNKD" styl=
e=3D"text-decoration: none; color: inherit;"><span style=3D"color:#333333">=
<span>Will a smoker=E2=80=99s lungs clean themselves if they quit smoking a=
nd how long does it take?</span></span></a></div></td></tr><tr><td style=3D=
"font-size:0px;padding:0px;word-break:break-word;" align=3D"left"><table st=
yle=3D"color:#000000;font-family:system-ui, Segoe UI, sans-serif;font-size:=
13px;line-height:22px;table-layout:auto;width:100%;border:none;" border=3D"=
0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tr><td valign=3D"mid=
dle"><div style=3D"padding:0;padding-bottom:4px" dir=3D"ltr" class=3D"text-=
pass-color-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-ser=
if; font-size: 13px; line-height: 1.2; color: #333333; text-align: left; ma=
rgin: 0;"><span style=3D"font-weight:700">Bill Black</span><span style=3D"c=
olor:#636466"> =E2=80=A2 </span><a href=3D"https://www.quora.com/qemail/tc?=
aoid=3DY8JMgJUsCW&aoty=3D1&aty=3D4&cp=3D9&et=3D2&id=3D09fd615fb69b4b2886664=
efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none; color: inher=
it;"><span style=3D"color:#636466">Answered January 17</span></a></p></div>=
</td></tr></table></td></tr><tr><td style=3D"font-size:0px;padding:0px;word=
-break:break-word;" align=3D"left"><div style=3D"font-family:system-ui, Seg=
oe UI, sans-serif;font-size:16px;line-height:1.6;text-align:left;color:#333=
333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsI=
CJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nnw5fDF8MTQ3Nzc0MzgzODg1MDU2MyJ9&al_pri=
=3D0&aoid=3DY8JMgJUsCW&aoty=3D1&aty=3D4&cp=3D9&et=3D2&id=3D09fd615fb69b4b28=
86664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:none;color:#33=
3333"><span style=3D"color:#333333"><div style=3D"padding:0;padding-bottom:=
16px;display:inline" dir=3D"ltr" class=3D"text-pass-color-to-links"><p styl=
e=3D"font-family: system-ui, Segoe UI, sans-serif; font-size: 16px; line-he=
ight: 1.6; color: #333333; text-align: left; display: inline; margin: 0;"><=
span>I smoked from 17 to 65. Two packs a day until around 45 when I went to=
 a pack a day. I also smoked weed the entire time. At 65, the VA diagnosed =
me with stage 4 COPD. After...</span></p></div><span> </span><div style=3D"=
padding:0;display:inline" dir=3D"ltr"><p style=3D"font-family: system-ui, S=
egoe UI, sans-serif; font-size: 16px; line-height: 1.6; color: #168de9; tex=
t-align: left; display: inline; margin: 0;">Read more =C2=BB</p></div><mj-t=
ext align=3D"left" color=3D"#333333" css-class=3D"  " font-family=3D"system=
-ui, Segoe UI, sans-serif" font-size=3D"15px" line-height=3D"1.6" padding=
=3D"0px"><div style=3D"padding-top:8px"><table><tr><td><img alt=3D"Upvote" =
height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.ico=
ns.upvote_20_retina.png-26-3d9494ab59c37e56.png" style=3D"text-decoration:n=
one;display:block;border:0;outline:none;height:20px;float:none;padding:0;ma=
rgin:auto" align=3D"none"></td><td style=3D"padding-right:16px"><div style=
=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"f=
ont-family: system-ui, Segoe UI, sans-serif; font-size: 13px; line-height: =
1.2; color: #636466; text-align: left; margin: 0;">10.2K</p></div></td><td>=
<img alt=3D"Comment" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-an=
s_frontend_assets.icons.comment_20_retina.png-26-4dbd4e9124f23bec.png" styl=
e=3D"text-decoration:none;display:block;border:0;outline:none;height:20px;f=
loat:none;padding:0;margin:auto" align=3D"none"></td><td style=3D"padding-r=
ight:16px"><div style=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to=
-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size=
: 13px; line-height: 1.2; color: #636466; text-align: left; margin: 0;">1.5=
K</p></div></td></tr></table></div></mj-text></span></a></div></td></tr><tr=
><td style=3D"font-size:0px;padding:0px;padding-top:16px;padding-right:25%;=
padding-bottom:0px;padding-left:25%;word-break:break-word;" align=3D"center=
"><p style=3D"border-top: solid 0.5px #dee0e1; font-size: 1px; width: 100%;=
 margin: 0;"></p><!--[if mso | IE]><table align=3D"center" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" style=3D"border-top:solid 0.5px #dee0e1;fo=
nt-size:1px;margin:0px auto;width:475px;" role=3D"presentation" width=3D"47=
5px" ><tr><td style=3D"height:0;line-height:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxMHwxfDE0Nzc3NDM4MTQ2=
NDI4OTEifQ%3D%3D&al_pri=3D1&aoid=3DoZkUC4CF5QB&aoty=3D2&aty=3D4&cp=3D10&et=
=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&q_aid=3DLUrJopSQm34&uid=3Dz4oDGo=
kmNKD" style=3D"text-decoration: none; color: inherit;"><span style=3D"colo=
r:#333333"><span>I am 44. How much SIP should I do every month to have a su=
m of 3 crore at 60?</span></span></a></div></td></tr><tr><td style=3D"font-=
size:0px;padding:0px;word-break:break-word;" align=3D"left"><table style=3D=
"color:#000000;font-family:system-ui, Segoe UI, sans-serif;font-size:13px;l=
ine-height:22px;table-layout:auto;width:100%;border:none;" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tr><td valign=3D"middle"><=
div style=3D"padding:0;padding-bottom:4px" dir=3D"ltr" class=3D"text-pass-c=
olor-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; fo=
nt-size: 13px; line-height: 1.2; color: #333333; text-align: left; margin: =
0;"><span style=3D"font-weight:700">Bharat</span><span>, studied Aerospace =
and Aeronautical Engineering at Univeristy of Tokyo</span><span style=3D"co=
lor:#636466"> =E2=80=A2 </span><a href=3D"https://www.quora.com/qemail/tc?a=
oid=3DLUrJopSQm34&aoty=3D1&aty=3D4&cp=3D10&et=3D2&id=3D09fd615fb69b4b288666=
4efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none; color: inhe=
rit;"><span style=3D"color:#636466">Updated October 14, 2024</span></a></p>=
</div></td></tr></table></td></tr><tr><td style=3D"font-size:0px;padding:0p=
x;word-break:break-word;" align=3D"left"><div style=3D"font-family:system-u=
i, Segoe UI, sans-serif;font-size:16px;line-height:1.6;text-align:left;colo=
r:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIjo=
gMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxMHwxfDE0Nzc3NDM4MTQ2NDI4OTEifQ=
%3D%3D&al_pri=3D0&aoid=3DLUrJopSQm34&aoty=3D1&aty=3D4&cp=3D10&et=3D2&id=3D0=
9fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration=
:none;color:#333333"><span style=3D"color:#333333"><div style=3D"padding:0;=
padding-bottom:16px;display:inline" dir=3D"ltr" class=3D"text-pass-color-to=
-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size=
: 16px; line-height: 1.6; color: #333333; text-align: left; display: inline=
; margin: 0;"><span>I am not a financial advisor. But here is what i am doi=
ng.</span><br><span>Mutual Fund:</span><br><span>SIP in Axis Small Cap (Rs7=
000/month)</span><br><span>SIP in SBI Contra (Rs8000/month)</span><br><span=
>Quant Small Cap (Rs10k/month)...</span></p></div><span> </span><div style=
=3D"padding:0;display:inline" dir=3D"ltr"><p style=3D"font-family: system-u=
i, Segoe UI, sans-serif; font-size: 16px; line-height: 1.6; color: #168de9;=
 text-align: left; display: inline; margin: 0;">Read more =C2=BB</p></div><=
mj-text align=3D"left" color=3D"#333333" css-class=3D"  " font-family=3D"sy=
stem-ui, Segoe UI, sans-serif" font-size=3D"15px" line-height=3D"1.6" paddi=
ng=3D"0px"><div style=3D"padding-top:8px"><table><tr><td><img alt=3D"Upvote=
" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.i=
cons.upvote_20_retina.png-26-3d9494ab59c37e56.png" style=3D"text-decoration=
:none;display:block;border:0;outline:none;height:20px;float:none;padding:0;=
margin:auto" align=3D"none"></td><td style=3D"padding-right:16px"><div styl=
e=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"=
font-family: system-ui, Segoe UI, sans-serif; font-size: 13px; line-height:=
 1.2; color: #636466; text-align: left; margin: 0;">584</p></div></td><td><=
img alt=3D"Comment" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans=
_frontend_assets.icons.comment_20_retina.png-26-4dbd4e9124f23bec.png" style=
=3D"text-decoration:none;display:block;border:0;outline:none;height:20px;fl=
oat:none;padding:0;margin:auto" align=3D"none"></td><td style=3D"padding-ri=
ght:16px"><div style=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-=
links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-size:=
 13px; line-height: 1.2; color: #636466; text-align: left; margin: 0;">80</=
p></div></td></tr></table></div></mj-text></span></a></div></td></tr><tr><t=
d style=3D"font-size:0px;padding:0px;padding-top:16px;padding-right:25%;pad=
ding-bottom:0px;padding-left:25%;word-break:break-word;" align=3D"center"><=
p style=3D"border-top: solid 0.5px #dee0e1; font-size: 1px; width: 100%; ma=
rgin: 0;"></p><!--[if mso | IE]><table align=3D"center" border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"border-top:solid 0.5px #dee0e1;font-=
size:1px;margin:0px auto;width:475px;" role=3D"presentation" width=3D"475px=
" ><tr><td style=3D"height:0;line-height:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxMXwxfDU2NzgyMzkxIn0%=
3D&al_pri=3D1&aoid=3DYQXgTlH0lUB&aoty=3D2&aty=3D4&cp=3D11&et=3D2&id=3D09fd6=
15fb69b4b2886664efc509acc2f&q_aid=3DFc3SKm6Tqoi&uid=3Dz4oDGokmNKD" style=3D=
"text-decoration: none; color: inherit;"><span style=3D"color:#333333"><spa=
n>Is ISKCON a scam?</span></span></a></div></td></tr><tr><td style=3D"font-=
size:0px;padding:0px;word-break:break-word;" align=3D"left"><table style=3D=
"color:#000000;font-family:system-ui, Segoe UI, sans-serif;font-size:13px;l=
ine-height:22px;table-layout:auto;width:100%;border:none;" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tr><td valign=3D"middle"><=
div style=3D"padding:0;padding-bottom:4px" dir=3D"ltr" class=3D"text-pass-c=
olor-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; fo=
nt-size: 13px; line-height: 1.2; color: #333333; text-align: left; margin: =
0;"><span style=3D"font-weight:700">Sahil Masroor</span><span style=3D"colo=
r:#636466"> =E2=80=A2 </span><a href=3D"https://www.quora.com/qemail/tc?aoi=
d=3DFc3SKm6Tqoi&aoty=3D1&aty=3D4&cp=3D11&et=3D2&id=3D09fd615fb69b4b2886664e=
fc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration: none; color: inheri=
t;"><span style=3D"color:#636466">Answered September 15, 2017</span></a></p=
></div></td></tr></table></td></tr><tr><td style=3D"font-size:0px;padding:0=
px;word-break:break-word;" align=3D"left"><div style=3D"font-family:system-=
ui, Segoe UI, sans-serif;font-size:16px;line-height:1.6;text-align:left;col=
or:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3DeyJ0eXBlIj=
ogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxMXwxfDU2NzgyMzkxIn0%3D&al_pri=
=3D0&aoid=3DFc3SKm6Tqoi&aoty=3D1&aty=3D4&cp=3D11&et=3D2&id=3D09fd615fb69b4b=
2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=3D"text-decoration:none;color:#=
333333"><span style=3D"color:#333333"><div style=3D"padding:0;padding-botto=
m:16px;display:inline" dir=3D"ltr" class=3D"text-pass-color-to-links"><p st=
yle=3D"font-family: system-ui, Segoe UI, sans-serif; font-size: 16px; line-=
height: 1.6; color: #333333; text-align: left; display: inline; margin: 0;"=
><span>I am an Indian Muslim and during my college days. I regularly visite=
d that place (we have Iskon Temple in Jaipur). I never found anyone asking =
for money and in the evening ...</span></p></div><span> </span><div style=
=3D"padding:0;display:inline" dir=3D"ltr"><p style=3D"font-family: system-u=
i, Segoe UI, sans-serif; font-size: 16px; line-height: 1.6; color: #168de9;=
 text-align: left; display: inline; margin: 0;">Read more =C2=BB</p></div><=
mj-text align=3D"left" color=3D"#333333" css-class=3D"  " font-family=3D"sy=
stem-ui, Segoe UI, sans-serif" font-size=3D"15px" line-height=3D"1.6" paddi=
ng=3D"0px"><div style=3D"padding-top:8px"><table><tr><td><img alt=3D"Upvote=
" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.i=
cons.upvote_20_retina.png-26-3d9494ab59c37e56.png" style=3D"text-decoration=
:none;display:block;border:0;outline:none;height:20px;float:none;padding:0;=
margin:auto" align=3D"none"></td><td style=3D"padding-right:16px"><div styl=
e=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"=
font-family: system-ui, Segoe UI, sans-serif; font-size: 13px; line-height:=
 1.2; color: #636466; text-align: left; margin: 0;">12.2K</p></div></td><td=
><img alt=3D"Comment" height=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-a=
ns_frontend_assets.icons.comment_20_retina.png-26-4dbd4e9124f23bec.png" sty=
le=3D"text-decoration:none;display:block;border:0;outline:none;height:20px;=
float:none;padding:0;margin:auto" align=3D"none"></td><td style=3D"padding-=
right:16px"><div style=3D"padding:0" dir=3D"ltr" class=3D"text-pass-color-t=
o-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-siz=
e: 13px; line-height: 1.2; color: #636466; text-align: left; margin: 0;">77=
0</p></div></td></tr></table></div></mj-text></span></a></div></td></tr><tr=
><td style=3D"font-size:0px;padding:0px;padding-top:16px;padding-right:25%;=
padding-bottom:0px;padding-left:25%;word-break:break-word;" align=3D"center=
"><p style=3D"border-top: solid 0.5px #dee0e1; font-size: 1px; width: 100%;=
 margin: 0;"></p><!--[if mso | IE]><table align=3D"center" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" style=3D"border-top:solid 0.5px #dee0e1;fo=
nt-size:1px;margin:0px auto;width:475px;" role=3D"presentation" width=3D"47=
5px" ><tr><td style=3D"height:0;line-height:0;"> &nbsp;
</td></tr></table><![endif]--></td></tr><tr><td style=3D"font-size:0px;padd=
ing:0px;word-break:break-word;"><div style=3D"height:16px;line-height:16px;=
">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;paddi=
ng-bottom:8px;word-break:break-word;" align=3D"left" class=3D"text-pass-col=
or-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif;font=
-size:19px;font-weight:700;letter-spacing:-0.5px;line-height:1.4;text-align=
:left;color:#333333;"><a href=3D"https://www.quora.com/qemail/tc?al_imp=3De=
yJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1NnwxMnwxfDE0Nzc3NDM4Njc3=
ODcyMzUifQ%3D%3D&al_pri=3D1&aoid=3DLpJ0c6GtWma&aoty=3D2&aty=3D4&cp=3D12&et=
=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&q_aid=3Do5ZpnDUavFF&uid=3Dz4oDGo=
kmNKD" style=3D"text-decoration: none; color: inherit;"><span style=3D"colo=
r:#333333"><span>What is the in-hand salary a recently joined engineer at B=
HEL receives?</span></span></a></div></td></tr><tr><td style=3D"font-size:0=
px;padding:0px;word-break:break-word;" align=3D"left"><table style=3D"color=
:#000000;font-family:system-ui, Segoe UI, sans-serif;font-size:13px;line-he=
ight:22px;table-layout:auto;width:100%;border:none;" border=3D"0" cellpaddi=
ng=3D"0" cellspacing=3D"0" width=3D"100%"><tr><td valign=3D"middle"><div st=
yle=3D"padding:0;padding-bottom:4px" dir=3D"ltr" class=3D"text-pass-color-t=
o-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font-siz=
e: 13px; line-height: 1.2; color: #333333; text-align: left; margin: 0;"><s=
pan style=3D"font-weight:700">Nitish Kumar(=E0=A4=A8=E0=A5=80=E0=A4=A4=E0=
=A5=80=E0=A4=B6 =E0=A4=95=E0=A5=81=E0=A4=AE=E0=A4=BE=E0=A4=B0)</span><span>=
, Salary at PSUs</span><span style=3D"color:#636466"> =E2=80=A2 </span><a h=
ref=3D"https://www.quora.com/qemail/tc?aoid=3Do5ZpnDUavFF&aoty=3D1&aty=3D4&=
cp=3D12&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" sty=
le=3D"text-decoration: none; color: inherit;"><span style=3D"color:#636466"=
>Answered July 12</span></a></p></div></td></tr></table></td></tr><tr><td s=
tyle=3D"font-size:0px;padding:0px;word-break:break-word;" align=3D"left"><d=
iv style=3D"font-family:system-ui, Segoe UI, sans-serif;font-size:16px;line=
-height:1.6;text-align:left;color:#333333;"><a href=3D"https://www.quora.co=
m/qemail/tc?al_imp=3DeyJ0eXBlIjogMzMsICJoYXNoIjogIjIwNjk2MzAyMjQzMDk0Mjg1Nn=
wxMnwxfDE0Nzc3NDM4Njc3ODcyMzUifQ%3D%3D&al_pri=3D0&aoid=3Do5ZpnDUavFF&aoty=
=3D1&aty=3D4&cp=3D12&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4o=
DGokmNKD" style=3D"text-decoration:none;color:#333333"><span style=3D"color=
:#333333"><img alt height=3D"auto" src=3D"https://qph.fs.quoracdn.net/main-=
qimg-649cb111797450d6f8499a66c91b098e" style=3D"text-decoration:none;displa=
y:block;border:0;outline:none;max-height:100px;max-width:200px;float:right;=
padding:0;padding-left:4px;margin:auto" align=3D"right"><div style=3D"paddi=
ng:0;padding-bottom:16px;display:inline" dir=3D"ltr" class=3D"text-pass-col=
or-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; font=
-size: 16px; line-height: 1.6; color: #333333; text-align: left; display: i=
nline; margin: 0;"><span>BHEL has a pay structure of =E2=82=B950,000=E2=80=
=93=E2=82=B91,60,000 for new joiners.</span></p></div><span> </span><div st=
yle=3D"padding:0;padding-bottom:16px;display:inline" dir=3D"ltr" class=3D"t=
ext-pass-color-to-links"><p style=3D"font-family: system-ui, Segoe UI, sans=
-serif; font-size: 16px; line-height: 1.6; color: #333333; text-align: left=
; display: inline; margin: 0;"><span>This is the salary slip for new joiner=
s , the in-hand salary during the one-year training period is around =E2=82=
=B975...</span></p></div><span> </span><div style=3D"padding:0;display:inli=
ne" dir=3D"ltr"><p style=3D"font-family: system-ui, Segoe UI, sans-serif; f=
ont-size: 16px; line-height: 1.6; color: #168de9; text-align: left; display=
: inline; margin: 0;">Read more =C2=BB</p></div><mj-text align=3D"left" col=
or=3D"#333333" css-class=3D"  " font-family=3D"system-ui, Segoe UI, sans-se=
rif" font-size=3D"15px" line-height=3D"1.6" padding=3D"0px"><div style=3D"p=
adding-top:8px"><table><tr><td><img alt=3D"Upvote" height=3D"20" src=3D"htt=
ps://qsf.fs.quoracdn.net/-4-ans_frontend_assets.icons.upvote_20_retina.png-=
26-3d9494ab59c37e56.png" style=3D"text-decoration:none;display:block;border=
:0;outline:none;height:20px;float:none;padding:0;margin:auto" align=3D"none=
"></td><td style=3D"padding-right:16px"><div style=3D"padding:0" dir=3D"ltr=
" class=3D"text-pass-color-to-links"><p style=3D"font-family: system-ui, Se=
goe UI, sans-serif; font-size: 13px; line-height: 1.2; color: #636466; text=
-align: left; margin: 0;">117</p></div></td><td><img alt=3D"Comment" height=
=3D"20" src=3D"https://qsf.fs.quoracdn.net/-4-ans_frontend_assets.icons.com=
ment_20_retina.png-26-4dbd4e9124f23bec.png" style=3D"text-decoration:none;d=
isplay:block;border:0;outline:none;height:20px;float:none;padding:0;margin:=
auto" align=3D"none"></td><td style=3D"padding-right:16px"><div style=3D"pa=
dding:0" dir=3D"ltr" class=3D"text-pass-color-to-links"><p style=3D"font-fa=
mily: system-ui, Segoe UI, sans-serif; font-size: 13px; line-height: 1.2; c=
olor: #636466; text-align: left; margin: 0;">22</p></div></td></tr></table>=
</div></mj-text></span></a></div></td></tr><tr><td style=3D"font-size:0px;p=
adding:0px;padding-top:32px;padding-bottom:32px;word-break:break-word;" ali=
gn=3D"center" vertical-align=3D"middle"><table style=3D"border-collapse:sep=
arate;line-height:100%;" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" r=
ole=3D"presentation"><tbody><tr><td style=3D"border:1px solid null;border-r=
adius:25px;cursor:auto;height:50px;mso-padding-alt:8px 32px;background:#2e6=
9ff;" align=3D"center" bgcolor=3D"#2e69ff" role=3D"presentation" valign=3D"=
middle"><a href=3D"https://www.quora.com/qemail/tc?aoid&aoty=3D7&aty=3D4&cp=
=3D0&et=3D2&id=3D09fd615fb69b4b2886664efc509acc2f&uid=3Dz4oDGokmNKD" style=
=3D"display:inline-block;background:#2e69ff;color:#ffffff;font-family:syste=
m-ui, Segoe UI, sans-serif;font-size:14px;font-weight:500;line-height:120%;=
margin:0;text-decoration:none;text-transform:none;padding:8px 32px;mso-padd=
ing-alt:0px;border-radius:25px;" target=3D"_blank">Read more in your feed</=
a></td></tr></tbody></table></td></tr></tbody></table></div><!--[if mso | I=
E]></td></tr></table><![endif]--></div><!--[if mso | IE]></td></tr></table>=
<![endif]--></td></tr></tbody></table></div><!--[if mso | IE]></td></tr></t=
able><![endif]--></td></tr></tbody></table><table style=3D"background:#ebf0=
ff;background-color:#ebf0ff;width:100%;border-radius:3px;" border=3D"0" cel=
lpadding=3D"0" cellspacing=3D"0" role=3D"presentation" align=3D"center"><tb=
ody><tr><td><!--[if mso | IE]><table align=3D"center" border=3D"0" cellpadd=
ing=3D"0" cellspacing=3D"0" class=3D"" role=3D"presentation" style=3D"width=
:525px;" width=3D"525" bgcolor=3D"#ebf0ff" ><tr><td style=3D"line-height:0p=
x;font-size:0px;mso-line-height-rule:exactly;"><![endif]--><div style=3D"ma=
rgin:0px auto;border-radius:3px;max-width:525px;"><table style=3D"width:100=
%;border-radius:3px;" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" role=
=3D"presentation" align=3D"center"><tbody><tr><td style=3D"direction:ltr;fo=
nt-size:0px;padding:24px;padding-bottom:16px;padding-top:32px;text-align:ce=
nter;"><!--[if mso | IE]><table role=3D"presentation" border=3D"0" cellpadd=
ing=3D"0" cellspacing=3D"0"><tr><td class=3D"" style=3D"vertical-align:top;=
width:477px;" ><![endif]--><div style=3D"font-size:0px;text-align:left;dire=
ction:ltr;display:inline-block;vertical-align:top;width:100%;" class=3D"mj-=
column-per-100 mj-outlook-group-fix"><table style=3D"vertical-align:top;" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"pres=
entation"><tbody><tr><td style=3D"font-size:0px;padding:0px;word-break:brea=
k-word;" align=3D"center"><div style=3D"font-family:system-ui, Segoe UI, sa=
ns-serif;font-size:17px;font-weight:700;line-height:1.4;text-align:center;c=
olor:#333333;">Never miss a story. Designed for readers on the go.</div></t=
d></tr><tr><td style=3D"font-size:0px;padding:0px;word-break:break-word;"><=
div style=3D"height:16px;line-height:16px;">=E2=80=8A</div></td></tr><table=
 style=3D"text-align: center; margin: 0 auto;" align=3D"center" class=3D"ap=
pDownloadLinks"><tr><td><table><tr><td style=3D"text-align:center"><div sty=
le=3D"width:100%;display:inline-block"><a href=3D"https://www.quora.com/app=
?campaign=3Demail_footer_links_experiment&inject=3D1&landing_url=3Dhttps%3A=
%2F%2Fwww.quora.com%2Fqemail%2Ftc%3Faoid%26aoty%3D7%26aty%3D4%26cp%3D0%26et=
%3D2%26id%3D09fd615fb69b4b2886664efc509acc2f%26uid%3Dz4oDGokmNKD&source=3Dd=
igest&target=3Diphone"><img alt=3D"Download on the App Store" height=3D"40"=
 src=3D"https://qsf.fs.quoracdn.net/-4-images.apple_app_store_badges.en.png=
-26-4e3b66753949d78b.png" style=3D"height:40px;max-height:40px;margin-botto=
m:10px"></a><a href=3D"https://www.quora.com/app?campaign=3Demail_footer_li=
nks_experiment&inject=3D1&landing_url=3Dhttps%3A%2F%2Fwww.quora.com%2Fqemai=
l%2Ftc%3Faoid%26aoty%3D7%26aty%3D4%26cp%3D0%26et%3D2%26id%3D09fd615fb69b4b2=
886664efc509acc2f%26uid%3Dz4oDGokmNKD&source=3Ddigest&target=3Dandroid"><im=
g alt=3D"Get it on Google Play" height=3D"60" src=3D"https://play.google.co=
m/intl/en_us/badges/images/generic/en_badge_web_generic.png" style=3D"heigh=
t:60px;max-height:60px"></a></div></td></tr></table></td></tr></table></tbo=
dy></table></div><!--[if mso | IE]></td></tr></table><![endif]--></td></tr>=
</tbody></table></div><!--[if mso | IE]></td></tr></table><![endif]--></td>=
</tr></tbody></table><table style=3D"width:100%;" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" role=3D"presentation" align=3D"center"><tbody><tr>=
<td><!--[if mso | IE]><table align=3D"center" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0" class=3D"" role=3D"presentation" style=3D"width:525px;"=
 width=3D"525" ><tr><td style=3D"line-height:0px;font-size:0px;mso-line-hei=
ght-rule:exactly;"><![endif]--><div style=3D"margin:0px auto;max-width:525p=
x;"><table style=3D"width:100%;" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" role=3D"presentation" align=3D"center"><tbody><tr><td style=3D"direc=
tion:ltr;font-size:0px;padding:24px;padding-left:0px;padding-right:0px;padd=
ing-top:0px;text-align:center;"><!--[if mso | IE]><table role=3D"presentati=
on" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"><tr><td class=3D"" sty=
le=3D"vertical-align:top;width:525px;" ><![endif]--><div style=3D"font-size=
:0px;text-align:left;direction:ltr;display:inline-block;vertical-align:top;=
width:100%;" class=3D"mj-column-per-100 mj-outlook-group-fix"><table style=
=3D"vertical-align:top;" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" w=
idth=3D"100%" role=3D"presentation"><tbody><tr><td style=3D"font-size:0px;p=
adding:0px;word-break:break-word;"><div style=3D"height:64px;line-height:64=
px;">=E2=80=8A</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;pa=
dding-bottom:8px;word-break:break-word;" align=3D"center" class=3D"text-pas=
s-color-to-links"><div style=3D"font-family:system-ui, Segoe UI, sans-serif=
;font-size:11px;line-height:1.6;text-align:center;color:#939598;"><div styl=
e=3D"font-weight:bold">Missing out on Quora emails? Be sure to add us to yo=
ur primary inbox.</div></div></td></tr><tr><td style=3D"font-size:0px;paddi=
ng:0px;padding-top:16px;padding-bottom:8px;word-break:break-word;" align=3D=
"center" class=3D"text-pass-color-to-links"><div style=3D"font-family:syste=
m-ui, Segoe UI, sans-serif;font-size:11px;line-height:1.6;text-align:center=
;color:#939598;">This email was sent by Quora (605 Castro Street, Mountain =
View, CA 94041).<br>If you don't want to receive this type of email in the =
future, please <a href=3D"https://www.quora.com/email_optout/qemail_unsubsc=
ribe?email_track_id=3D09fd615fb69b4b2886664efc509acc2f&t=3D1754335576175076=
&token=3D9f8b7e9c53c306157f981b3916cef82dadcff06b02f37b0bed432eef7d3b50ee54=
f08b263bfe65f9fbc7b80dd0943ab81a21a11a4ed6bd1c463370ef95d03ec0&type=3D2&uid=
=3D3062852667" style=3D"text-decoration: underline; color: inherit;">unsubs=
cribe</a>.</div></td></tr><tr><td style=3D"font-size:0px;padding:0px;word-b=
reak:break-word;" align=3D"center" class=3D"text-pass-color-to-links"><div =
style=3D"font-family:system-ui, Segoe UI, sans-serif;font-size:11px;line-he=
ight:1.6;text-align:center;color:#939598;"><a href=3D"https://www.quora.com=
" style=3D"text-decoration: underline; color: inherit;">https://www.quora.c=
om</a></div></td></tr></tbody></table></div><!--[if mso | IE]></td></tr></t=
able><![endif]--></td></tr></tbody></table></div><!--[if mso | IE]></td></t=
r></table><![endif]--></td></tr></tbody></table></div></body></html>
--===============0747052398799050625==--
Header Analyzed
Email Subject: I am Tejaswini (Ruby). 23 years old girl and an elder child. I am very disappointed wi...
Copy/Paste Warning
Copy/Pasting a header works for most people, but sometimes it can cause problems with things like DKIM Validation. For the best results, use our Email Deliverability tool
Delivery Information
Ok Icon DMARC Compliant
Ok Icon SPF Alignment
Ok Icon SPF Authenticated
Ok Icon DKIM Alignment
Problem Icon DKIM Authenticated
Relay Information
Received Delay:	1 seconds

Hop	Delay	From	By	With	Time (UTC)	Blacklist
1	*		pigeon-at-10037	ESMTP	8/4/2025 7:26:16 PM	
2	1 Second	o5.pigeon.quora.com 52.20.209.227	mx.google.com	ESMTPS	8/4/2025 7:26:17 PM	Is on a blacklist
3	0 seconds		2002:a05:651c:1992:b0:332:3a8c:3439	SMTP	8/4/2025 7:26:17 PM	


SPF and DKIM Information
dmarc:quora.com   
v=DMARC1; p=reject;rua=mailto:dmarc+rua@quora.com;
spf:quora.com:52.20.209.227  
v=spf1 include:_spf1.quora.com include:_spf2.quora.com include:_spf.google.com include:mail.zendesk.com include:mailsenders.netsuite.com include:mktomail.com include:_spf.salesforce.com ~all
dkim:quora.com:pigeon  
Dkim Public Record:
v=DKIM1;k=rsa;p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxZGJxusNvKlUQ8h3rfc8wA4NO8G2CABloTNXlA1gqTUg+vzAj9bsVX6ST3b9gr51QiejvhS94exQYPkC8mYlIB7NOf4ZvfzQDG/yMHnvAIZPZJi0g4GbFAyQAPGkWhCI1tlNRffu9Ckl1/TveDkAZxnJRWmHYKbJtlHYlqMB7bFf9EZTJxpGU5dWXKMnyr3C7RrOvXhq7Eblsfg7DdOjqCtaKFoRs8hH0M34aDhP9222Y7wQVRnn/h25znUAoBZfiEHACly+n6grkfMdAGAoAyQiLknSBESNDA/hz4nld3w/f1po1iJJuXuflcv3Og2l9DEkpqaaEv9f2KpAIiGYTQIDAQAB
Dkim Signature:
v=1; a=rsa-sha256; c=relaxed/relaxed; d=quora.com; h= content-type:mime-version:from:to:subject:list-unsubscribe:date :message-id; s=pigeon; bh=zaA0SuiPS10wmyaTcCaEeEN5aZwPAZDlp4BirD 2v14E=; b=GP6lbvkqlLhKNtHV1NYGYgUH8ts7ZJ7z4IOppQJhFMFNwivOV6sjaO G1zT3BFp1BiDQwDrCItuoB0X050Dseu/0aD0n3TTcwvQz9vY6Eoo27gfx4avlaZT 2GF/FSZ2jAIoZ0028XvrUYs2UeyvhRtfME7jK8+UHpXokEezHNNGkmnQE+wJzZvH 1zEtKE1HgITMAGCyVcHiSI4LCdsTIW66hEryp5zAAI6Hk4Fz2D4TdrvMBwe2kY5s yxJgSW2uJn+yr9B0i/qjTCkXLqjl1Ph7xFHqEZU7XoemJrqkYJJXzvawQIZouwFo ent34PEtCFG4v8/MK81MzyvUrJb31SaA==
Header Found
Header Name	Header Value
Delivered-To	ayushkumar1020304050@gmail.com
X-Google-Smtp-Source	AGHT+IEk9sXIGtAAcx+BKnU+5AjbXX89CY+n3dy+OTKZ2Z94BdjHrQWbInkFlyfLyJYkTbZE+RxL
X-Received	by 2002:ac8:5c93:0:b0:4b0:77ff:d77d with SMTP id d75a77b69052e-4b077ffdc16mr40918201cf.33.1754335577426; Mon, 04 Aug 2025 12:26:17 -0700 (PDT)
ARC-Seal	i=1; a=rsa-sha256; t=1754335577; cv=none; d=google.com; s=arc-20240605; b=TPfagO/U4JCwwdLrXJKYL00fUE/UboSn1ul3Ur+evtpfd9rTJxRK5bUK3C6ZOsmjVQ ljQxW+Q8WXsiLWPS7S6UAn/7hN646rNAce4memZKDJYbrUwFf1QE5HHsWfYkCKvVPJ6j r2AA23yIk4V2eDovdDonVlSnPYfnrGAD6FQ24jP6YZbX9YCiHODEEBqSYYR7mM9Fjbf2 plvrV8dX2bR61cHIlQFv/XThOXmXR7zRBytEXGelcJ33FYgvqRiau2kMFA1rZH9yZO4A Xa3vz29b/rbxZAzcziVa6om/wvSrvXqUXeDg+qm0hiK+N+73zhqD1v4aHbgx2EQe1Jf3 P10A==
ARC-Message-Signature	i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605; h=message-id:date:list-unsubscribe:subject:to:from:mime-version :dkim-signature; bh=zaA0SuiPS10wmyaTcCaEeEN5aZwPAZDlp4BirD2v14E=; fh=JDOfYpWicVp/NICGk0v9hx5VfmJ4GfNSO7CzLxivfF0=; b=dcCse8mzLnSR+GXbt07kgnrA0G20MiDWWLXFVpko3Yuf/7d3tebMrIaKXcq6cPw9b6 vSxPruclwHVOj//3NY22CXP4a8iKxAf3utzmIgjTOphVH7nOsY/mUDbMExvhXBHkcexK RmdOvxm8vM3kwibfKxpbldte0aNl3MFOKFTaFFlkgLIE7PAQqrD6qjFkhrYNIuqN3oHq x1eixWlUpO7tA8INwEX9XRuylOjOGCAuvWdE0I/Q0y9ykSerD0mjvMB7M2rB591I6irU a5RqU5xhIEtoWBBS2oykdQA9oFrYwvbTRncRhq/31sublXrURtsb5FyWBa807imLnFGc MAFA==; dara=google.com
ARC-Authentication-Results	i=1; mx.google.com; dkim=pass header.i=@quora.com header.s=pigeon header.b=GP6lbvkq; spf=pass (google.com: domain of noreply@quora.com designates 52.20.209.227 as permitted sender) smtp.mailfrom=noreply@quora.com; dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=quora.com
Return-Path	<noreply@quora.com>
Received-SPF	pass (google.com: domain of noreply@quora.com designates 52.20.209.227 as permitted sender) client-ip=52.20.209.227;
Authentication-Results	mx.google.com; dkim=pass header.i=@quora.com header.s=pigeon header.b=GP6lbvkq; spf=pass (google.com: domain of noreply@quora.com designates 52.20.209.227 as permitted sender) smtp.mailfrom=noreply@quora.com; dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=quora.com
DKIM-Signature	v=1; a=rsa-sha256; c=relaxed/relaxed; d=quora.com; h= content-type:mime-version:from:to:subject:list-unsubscribe:date :message-id; s=pigeon; bh=zaA0SuiPS10wmyaTcCaEeEN5aZwPAZDlp4BirD 2v14E=; b=GP6lbvkqlLhKNtHV1NYGYgUH8ts7ZJ7z4IOppQJhFMFNwivOV6sjaO G1zT3BFp1BiDQwDrCItuoB0X050Dseu/0aD0n3TTcwvQz9vY6Eoo27gfx4avlaZT 2GF/FSZ2jAIoZ0028XvrUYs2UeyvhRtfME7jK8+UHpXokEezHNNGkmnQE+wJzZvH 1zEtKE1HgITMAGCyVcHiSI4LCdsTIW66hEryp5zAAI6Hk4Fz2D4TdrvMBwe2kY5s yxJgSW2uJn+yr9B0i/qjTCkXLqjl1Ph7xFHqEZU7XoemJrqkYJJXzvawQIZouwFo ent34PEtCFG4v8/MK81MzyvUrJb31SaA==
Content-Type	multipart/alternative; boundary="===============0747052398799050625=="
MIME-Version	1.0
From	Quora Digest <english-quora-digest@quora.com>
To	ayushkumar1020304050@gmail.com
Subject	I am Tejaswini (Ruby). 23 years old girl and an elder child. I am very disappointed wi...
List-Unsubscribe	<https://www.quora.com/email_optout/qemail_unsubscribe?email_track_id=09fd615fb69b4b2886664efc509acc2f&ish=1&t=1754335576166444&token=10d8a3ef86e1865f6ee49db966be27728008da9d403d0d134101d161205f84fe99bad936057fc47a489aa1b0fe73ceb1832baa07b3fabfc7f2b64f83d0210192&type=2&uid=3062852667>
X-CID	vhI3rN3rEJc_JMdGVaqxdRiS6Q-bUDy1Y9fP-2g5UXpr9w6eX9feJxgmReE06q0F32bWyWCtIKwg96-6geRYU3Tw65TvPNhWoWHNSm1TF5IM8MrX6TB9qTyRamqtRk9Gmd_MJQP1VzomdT827FETAAECAA==
Date	Mon, 04 Aug 2025 19:26:16 +0000
Message-ID	<vhI3rN3rEJc_JMdGVaqxdRiS6Q-bUDy1Y9fP-2g5UXpr9w6eX9feJxgmReE06q0F32bWyWCtIKwg96-6geRYU3Tw65TvPNhWoWHNSm1TF5IM8MrX6TB9qTyRamqtRk9Gmd_MJQP1VzomdT827FETAAECAA==@t1.msgid.quoramail.com>
X-SMTPAPI	{"unique_args": {"Message-ID": "<vhI3rN3rEJc_JMdGVaqxdRiS6Q-bUDy1Y9fP-2g5UXpr9w6eX9feJxgmReE06q0F32bWyWCtIKwg96-6geRYU3Tw65TvPNhWoWHNSm1TF5IM8MrX6TB9qTyRamqtRk9Gmd_MJQP1VzomdT827FETAAECAA==@t1.msgid.quoramail.com>", "account": "digest", "email_type": 2, "ip_pool": "main", "X-QMSG": "DUIg5DwksENBGhqD6JoQf8P5Evtm7jnobd8sBaOslzygzcd1pIMpE49Y1PSg8xboH0BVA-GAgi1KCS20sFpdFBp4cMYLnfIHSy6ZbYs4qjG2na8NNGosgcEX2QTmvt846BzpsbJwjEe99z9iEBEGM_H4JR9NeFkTrIKMfnfL1lpVR0YeXhiY2tzrX_JaPJ40Vk6ZWS_AiHuOV8o2F8u2-jfNqRJ3Emdf_BIiGGEMXdbOfbxUXfB-DmakYJUBnPeMO5W2bu_mBc5QzmGfdxFp5hNxLQQ8r9FyOPL-9dYGTfgqtcjLJpYF4YLsnNzOW_9QQiPDWn4upK4F9mgs4jQKehjCIGHdG0e8rH5E5SvETgCuJJrc1QW_dKlnreX7xIp71U7jpkEQHt8FEza8JW8h0WQx761aiHVRZnWQyzyTJrP-TZnieiSvn8qIQOdSIewqzz5uWzchGY8tIFr4nUEeQwr7ippMeFxMr7aEc11shVIDcMN_wovL_2Azjq0ckmSWWbMe8UKJrB0S8v-aGYKTM5b1G1Y3UTdhv-8pPYeizsAIYwlgxk4wHqjcP8f3MWK9JGWDXFd-7d1auhedibAYNqEQPGXfDPCPBWiWMnz5O1gnVlerA4kXXq6EXSDuqAABAgA="}, "category": ["account_digest", "email_type_2", "ip_pool_main"], "filters": {"bypass_list_management": {"settings": {"enable": 1}}}, "ip_pool": "main"}
X-QMSG	DUIg5DwksENBGhqD6JoQf8P5Evtm7jnobd8sBaOslzygzcd1pIMpE49Y1PSg8xboH0BVA-GAgi1KCS20sFpdFBp4cMYLnfIHSy6ZbYs4qjG2na8NNGosgcEX2QTmvt846BzpsbJwjEe99z9iEBEGM_H4JR9NeFkTrIKMfnfL1lpVR0YeXhiY2tzrX_JaPJ40Vk6ZWS_AiHuOV8o2F8u2-jfNqRJ3Emdf_BIiGGEMXdbOfbxUXfB-DmakYJUBnPeMO5W2bu_mBc5QzmGfdxFp5hNxLQQ8r9FyOPL-9dYGTfgqtcjLJpYF4YLsnNzOW_9QQiPDWn4upK4F9mgs4jQKehjCIGHdG0e8rH5E5SvETgCuJJrc1QW_dKlnreX7xIp71U7jpkEQHt8FEza8JW8h0WQx761aiHVRZnWQyzyTJrP-TZnieiSvn8qIQOdSIewqzz5uWzchGY8tIFr4nUEeQwr7ippMeFxMr7aEc11shVIDcMN_wovL_2Azjq0ckmSWWbMe8UKJrB0S8v-aGYKTM5b1G1Y3UTdhv-8pPYeizsAIYwlgxk4wHqjcP8f3MWK9JGWDXFd-7d1auhedibAYNqEQPGXfDPCPBWiWMnz5O1gnVlerA4kXXq6

