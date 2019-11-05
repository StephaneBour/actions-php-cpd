# PHP Copy Paste Detector action

This action controls that code was not duplicated.

## Inputs

### `dir`

The folder to control. Default `"."`.

## Example usage

```yaml
- name: PHP Copy Paste Detector
  uses: StephaneBour/actions-php-cpd@1.0
  with:
    dir: './src'
```
