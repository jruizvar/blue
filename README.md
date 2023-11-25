# Deploy streamlit app in AWS EC2 with Terraform

### Requirements

```bash
export TF_VAR_streamlit_app="$(cat streamlit_app.py | base64)"
```

### Deploy

```bash
terraform apply
```

