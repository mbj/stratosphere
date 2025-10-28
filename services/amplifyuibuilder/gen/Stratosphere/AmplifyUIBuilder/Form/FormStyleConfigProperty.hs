module Stratosphere.AmplifyUIBuilder.Form.FormStyleConfigProperty (
        FormStyleConfigProperty(..), mkFormStyleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormStyleConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formstyleconfig.html>
    FormStyleConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formstyleconfig.html#cfn-amplifyuibuilder-form-formstyleconfig-tokenreference>
                             tokenReference :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formstyleconfig.html#cfn-amplifyuibuilder-form-formstyleconfig-value>
                             value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormStyleConfigProperty :: FormStyleConfigProperty
mkFormStyleConfigProperty
  = FormStyleConfigProperty
      {haddock_workaround_ = (), tokenReference = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties FormStyleConfigProperty where
  toResourceProperties FormStyleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormStyleConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TokenReference" Prelude.<$> tokenReference,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON FormStyleConfigProperty where
  toJSON FormStyleConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TokenReference" Prelude.<$> tokenReference,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "TokenReference" FormStyleConfigProperty where
  type PropertyType "TokenReference" FormStyleConfigProperty = Value Prelude.Text
  set newValue FormStyleConfigProperty {..}
    = FormStyleConfigProperty
        {tokenReference = Prelude.pure newValue, ..}
instance Property "Value" FormStyleConfigProperty where
  type PropertyType "Value" FormStyleConfigProperty = Value Prelude.Text
  set newValue FormStyleConfigProperty {..}
    = FormStyleConfigProperty {value = Prelude.pure newValue, ..}