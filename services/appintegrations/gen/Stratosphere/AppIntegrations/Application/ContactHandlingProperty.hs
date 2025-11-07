module Stratosphere.AppIntegrations.Application.ContactHandlingProperty (
        ContactHandlingProperty(..), mkContactHandlingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContactHandlingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-contacthandling.html>
    ContactHandlingProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-contacthandling.html#cfn-appintegrations-application-contacthandling-scope>
                             scope :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContactHandlingProperty ::
  Value Prelude.Text -> ContactHandlingProperty
mkContactHandlingProperty scope
  = ContactHandlingProperty {haddock_workaround_ = (), scope = scope}
instance ToResourceProperties ContactHandlingProperty where
  toResourceProperties ContactHandlingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::Application.ContactHandling",
         supportsTags = Prelude.False, properties = ["Scope" JSON..= scope]}
instance JSON.ToJSON ContactHandlingProperty where
  toJSON ContactHandlingProperty {..}
    = JSON.object ["Scope" JSON..= scope]
instance Property "Scope" ContactHandlingProperty where
  type PropertyType "Scope" ContactHandlingProperty = Value Prelude.Text
  set newValue ContactHandlingProperty {..}
    = ContactHandlingProperty {scope = newValue, ..}