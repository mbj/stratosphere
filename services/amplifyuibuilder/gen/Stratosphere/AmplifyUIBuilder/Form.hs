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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html>
    Form {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-appid>
          appId :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-cta>
          cta :: (Prelude.Maybe FormCTAProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-datatype>
          dataType :: (Prelude.Maybe FormDataTypeConfigProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-environmentname>
          environmentName :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-fields>
          fields :: (Prelude.Maybe (Prelude.Map Prelude.Text FieldConfigProperty)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-formactiontype>
          formActionType :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-labeldecorator>
          labelDecorator :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-name>
          name :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-schemaversion>
          schemaVersion :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-sectionalelements>
          sectionalElements :: (Prelude.Maybe (Prelude.Map Prelude.Text SectionalElementProperty)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-style>
          style :: (Prelude.Maybe FormStyleProperty),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-form.html#cfn-amplifyuibuilder-form-tags>
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkForm :: Form
mkForm
  = Form
      {haddock_workaround_ = (), appId = Prelude.Nothing,
       cta = Prelude.Nothing, dataType = Prelude.Nothing,
       environmentName = Prelude.Nothing, fields = Prelude.Nothing,
       formActionType = Prelude.Nothing, labelDecorator = Prelude.Nothing,
       name = Prelude.Nothing, schemaVersion = Prelude.Nothing,
       sectionalElements = Prelude.Nothing, style = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Form where
  toResourceProperties Form {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppId" Prelude.<$> appId,
                            (JSON..=) "Cta" Prelude.<$> cta,
                            (JSON..=) "DataType" Prelude.<$> dataType,
                            (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                            (JSON..=) "Fields" Prelude.<$> fields,
                            (JSON..=) "FormActionType" Prelude.<$> formActionType,
                            (JSON..=) "LabelDecorator" Prelude.<$> labelDecorator,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SchemaVersion" Prelude.<$> schemaVersion,
                            (JSON..=) "SectionalElements" Prelude.<$> sectionalElements,
                            (JSON..=) "Style" Prelude.<$> style,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Form where
  toJSON Form {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppId" Prelude.<$> appId,
               (JSON..=) "Cta" Prelude.<$> cta,
               (JSON..=) "DataType" Prelude.<$> dataType,
               (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
               (JSON..=) "Fields" Prelude.<$> fields,
               (JSON..=) "FormActionType" Prelude.<$> formActionType,
               (JSON..=) "LabelDecorator" Prelude.<$> labelDecorator,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SchemaVersion" Prelude.<$> schemaVersion,
               (JSON..=) "SectionalElements" Prelude.<$> sectionalElements,
               (JSON..=) "Style" Prelude.<$> style,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AppId" Form where
  type PropertyType "AppId" Form = Value Prelude.Text
  set newValue Form {..} = Form {appId = Prelude.pure newValue, ..}
instance Property "Cta" Form where
  type PropertyType "Cta" Form = FormCTAProperty
  set newValue Form {..} = Form {cta = Prelude.pure newValue, ..}
instance Property "DataType" Form where
  type PropertyType "DataType" Form = FormDataTypeConfigProperty
  set newValue Form {..}
    = Form {dataType = Prelude.pure newValue, ..}
instance Property "EnvironmentName" Form where
  type PropertyType "EnvironmentName" Form = Value Prelude.Text
  set newValue Form {..}
    = Form {environmentName = Prelude.pure newValue, ..}
instance Property "Fields" Form where
  type PropertyType "Fields" Form = Prelude.Map Prelude.Text FieldConfigProperty
  set newValue Form {..} = Form {fields = Prelude.pure newValue, ..}
instance Property "FormActionType" Form where
  type PropertyType "FormActionType" Form = Value Prelude.Text
  set newValue Form {..}
    = Form {formActionType = Prelude.pure newValue, ..}
instance Property "LabelDecorator" Form where
  type PropertyType "LabelDecorator" Form = Value Prelude.Text
  set newValue Form {..}
    = Form {labelDecorator = Prelude.pure newValue, ..}
instance Property "Name" Form where
  type PropertyType "Name" Form = Value Prelude.Text
  set newValue Form {..} = Form {name = Prelude.pure newValue, ..}
instance Property "SchemaVersion" Form where
  type PropertyType "SchemaVersion" Form = Value Prelude.Text
  set newValue Form {..}
    = Form {schemaVersion = Prelude.pure newValue, ..}
instance Property "SectionalElements" Form where
  type PropertyType "SectionalElements" Form = Prelude.Map Prelude.Text SectionalElementProperty
  set newValue Form {..}
    = Form {sectionalElements = Prelude.pure newValue, ..}
instance Property "Style" Form where
  type PropertyType "Style" Form = FormStyleProperty
  set newValue Form {..} = Form {style = Prelude.pure newValue, ..}
instance Property "Tags" Form where
  type PropertyType "Tags" Form = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Form {..} = Form {tags = Prelude.pure newValue, ..}