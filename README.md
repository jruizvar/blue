# Deploy streamlit app in AWS EC2 with Terraform

### Requirements

```bash
export TF_VAR_streamlit_app="$(cat streamlit_app.py | base64)"
```

Verify the variable was created correctly:

```bash
echo $TF_VAR_streamlit_app | base64 --decode 
```

### Deploy

```bash
terraform apply
```

