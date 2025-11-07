module Stratosphere.ODB.CloudExadataInfrastructure.CustomerContactProperty (
        CustomerContactProperty(..), mkCustomerContactProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomerContactProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-customercontact.html>
    CustomerContactProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-customercontact.html#cfn-odb-cloudexadatainfrastructure-customercontact-email>
                             email :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomerContactProperty :: CustomerContactProperty
mkCustomerContactProperty
  = CustomerContactProperty
      {haddock_workaround_ = (), email = Prelude.Nothing}
instance ToResourceProperties CustomerContactProperty where
  toResourceProperties CustomerContactProperty {..}
    = ResourceProperties
        {awsType = "AWS::ODB::CloudExadataInfrastructure.CustomerContact",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Email" Prelude.<$> email])}
instance JSON.ToJSON CustomerContactProperty where
  toJSON CustomerContactProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Email" Prelude.<$> email]))
instance Property "Email" CustomerContactProperty where
  type PropertyType "Email" CustomerContactProperty = Value Prelude.Text
  set newValue CustomerContactProperty {..}
    = CustomerContactProperty {email = Prelude.pure newValue, ..}