module Stratosphere.AmplifyUIBuilder.Form.FormStyleConfigProperty (
        FormStyleConfigProperty(..), mkFormStyleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormStyleConfigProperty
  = FormStyleConfigProperty {tokenReference :: (Prelude.Maybe (Value Prelude.Text)),
                             value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormStyleConfigProperty :: FormStyleConfigProperty
mkFormStyleConfigProperty
  = FormStyleConfigProperty
      {tokenReference = Prelude.Nothing, value = Prelude.Nothing}
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