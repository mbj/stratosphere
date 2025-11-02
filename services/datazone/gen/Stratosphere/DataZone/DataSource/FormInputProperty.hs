module Stratosphere.DataZone.DataSource.FormInputProperty (
        FormInputProperty(..), mkFormInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-forminput.html>
    FormInputProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-forminput.html#cfn-datazone-datasource-forminput-content>
                       content :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-forminput.html#cfn-datazone-datasource-forminput-formname>
                       formName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-forminput.html#cfn-datazone-datasource-forminput-typeidentifier>
                       typeIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-forminput.html#cfn-datazone-datasource-forminput-typerevision>
                       typeRevision :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormInputProperty :: Value Prelude.Text -> FormInputProperty
mkFormInputProperty formName
  = FormInputProperty
      {haddock_workaround_ = (), formName = formName,
       content = Prelude.Nothing, typeIdentifier = Prelude.Nothing,
       typeRevision = Prelude.Nothing}
instance ToResourceProperties FormInputProperty where
  toResourceProperties FormInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.FormInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FormName" JSON..= formName]
                           (Prelude.catMaybes
                              [(JSON..=) "Content" Prelude.<$> content,
                               (JSON..=) "TypeIdentifier" Prelude.<$> typeIdentifier,
                               (JSON..=) "TypeRevision" Prelude.<$> typeRevision]))}
instance JSON.ToJSON FormInputProperty where
  toJSON FormInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FormName" JSON..= formName]
              (Prelude.catMaybes
                 [(JSON..=) "Content" Prelude.<$> content,
                  (JSON..=) "TypeIdentifier" Prelude.<$> typeIdentifier,
                  (JSON..=) "TypeRevision" Prelude.<$> typeRevision])))
instance Property "Content" FormInputProperty where
  type PropertyType "Content" FormInputProperty = Value Prelude.Text
  set newValue FormInputProperty {..}
    = FormInputProperty {content = Prelude.pure newValue, ..}
instance Property "FormName" FormInputProperty where
  type PropertyType "FormName" FormInputProperty = Value Prelude.Text
  set newValue FormInputProperty {..}
    = FormInputProperty {formName = newValue, ..}
instance Property "TypeIdentifier" FormInputProperty where
  type PropertyType "TypeIdentifier" FormInputProperty = Value Prelude.Text
  set newValue FormInputProperty {..}
    = FormInputProperty {typeIdentifier = Prelude.pure newValue, ..}
instance Property "TypeRevision" FormInputProperty where
  type PropertyType "TypeRevision" FormInputProperty = Value Prelude.Text
  set newValue FormInputProperty {..}
    = FormInputProperty {typeRevision = Prelude.pure newValue, ..}