module Stratosphere.AmplifyUIBuilder.Form (
        module Exports, Form(..), mkForm
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FieldConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormCTAProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormDataTypeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.SectionalElementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Form
  = Form {appId :: (Prelude.Maybe (Value Prelude.Text)),
          cta :: (Prelude.Maybe FormCTAProperty),
          dataType :: FormDataTypeConfigProperty,
          environmentName :: (Prelude.Maybe (Value Prelude.Text)),
          fields :: (Prelude.Map Prelude.Text FieldConfigProperty),
          formActionType :: (Value Prelude.Text),
          labelDecorator :: (Prelude.Maybe (Value Prelude.Text)),
          name :: (Value Prelude.Text),
          schemaVersion :: (Value Prelude.Text),
          sectionalElements :: (Prelude.Map Prelude.Text SectionalElementProperty),
          style :: FormStyleProperty,
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkForm ::
  FormDataTypeConfigProperty
  -> Prelude.Map Prelude.Text FieldConfigProperty
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Prelude.Map Prelude.Text SectionalElementProperty
                 -> FormStyleProperty -> Form
mkForm
  dataType
  fields
  formActionType
  name
  schemaVersion
  sectionalElements
  style
  = Form
      {dataType = dataType, fields = fields,
       formActionType = formActionType, name = name,
       schemaVersion = schemaVersion,
       sectionalElements = sectionalElements, style = style,
       appId = Prelude.Nothing, cta = Prelude.Nothing,
       environmentName = Prelude.Nothing,
       labelDecorator = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Form where
  toResourceProperties Form {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataType" JSON..= dataType, "Fields" JSON..= fields,
                            "FormActionType" JSON..= formActionType, "Name" JSON..= name,
                            "SchemaVersion" JSON..= schemaVersion,
                            "SectionalElements" JSON..= sectionalElements,
                            "Style" JSON..= style]
                           (Prelude.catMaybes
                              [(JSON..=) "AppId" Prelude.<$> appId,
                               (JSON..=) "Cta" Prelude.<$> cta,
                               (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                               (JSON..=) "LabelDecorator" Prelude.<$> labelDecorator,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Form where
  toJSON Form {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataType" JSON..= dataType, "Fields" JSON..= fields,
               "FormActionType" JSON..= formActionType, "Name" JSON..= name,
               "SchemaVersion" JSON..= schemaVersion,
               "SectionalElements" JSON..= sectionalElements,
               "Style" JSON..= style]
              (Prelude.catMaybes
                 [(JSON..=) "AppId" Prelude.<$> appId,
                  (JSON..=) "Cta" Prelude.<$> cta,
                  (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                  (JSON..=) "LabelDecorator" Prelude.<$> labelDecorator,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppId" Form where
  type PropertyType "AppId" Form = Value Prelude.Text
  set newValue Form {..} = Form {appId = Prelude.pure newValue, ..}
instance Property "Cta" Form where
  type PropertyType "Cta" Form = FormCTAProperty
  set newValue Form {..} = Form {cta = Prelude.pure newValue, ..}
instance Property "DataType" Form where
  type PropertyType "DataType" Form = FormDataTypeConfigProperty
  set newValue Form {..} = Form {dataType = newValue, ..}
instance Property "EnvironmentName" Form where
  type PropertyType "EnvironmentName" Form = Value Prelude.Text
  set newValue Form {..}
    = Form {environmentName = Prelude.pure newValue, ..}
instance Property "Fields" Form where
  type PropertyType "Fields" Form = Prelude.Map Prelude.Text FieldConfigProperty
  set newValue Form {..} = Form {fields = newValue, ..}
instance Property "FormActionType" Form where
  type PropertyType "FormActionType" Form = Value Prelude.Text
  set newValue Form {..} = Form {formActionType = newValue, ..}
instance Property "LabelDecorator" Form where
  type PropertyType "LabelDecorator" Form = Value Prelude.Text
  set newValue Form {..}
    = Form {labelDecorator = Prelude.pure newValue, ..}
instance Property "Name" Form where
  type PropertyType "Name" Form = Value Prelude.Text
  set newValue Form {..} = Form {name = newValue, ..}
instance Property "SchemaVersion" Form where
  type PropertyType "SchemaVersion" Form = Value Prelude.Text
  set newValue Form {..} = Form {schemaVersion = newValue, ..}
instance Property "SectionalElements" Form where
  type PropertyType "SectionalElements" Form = Prelude.Map Prelude.Text SectionalElementProperty
  set newValue Form {..} = Form {sectionalElements = newValue, ..}
instance Property "Style" Form where
  type PropertyType "Style" Form = FormStyleProperty
  set newValue Form {..} = Form {style = newValue, ..}
instance Property "Tags" Form where
  type PropertyType "Tags" Form = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Form {..} = Form {tags = Prelude.pure newValue, ..}