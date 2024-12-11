module Stratosphere.VpcLattice.ServiceNetwork.SharingConfigProperty (
        SharingConfigProperty(..), mkSharingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SharingConfigProperty
  = SharingConfigProperty {enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSharingConfigProperty ::
  Value Prelude.Bool -> SharingConfigProperty
mkSharingConfigProperty enabled
  = SharingConfigProperty {enabled = enabled}
instance ToResourceProperties SharingConfigProperty where
  toResourceProperties SharingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ServiceNetwork.SharingConfig",
         supportsTags = Prelude.False,
         properties = ["enabled" JSON..= enabled]}
instance JSON.ToJSON SharingConfigProperty where
  toJSON SharingConfigProperty {..}
    = JSON.object ["enabled" JSON..= enabled]
instance Property "enabled" SharingConfigProperty where
  type PropertyType "enabled" SharingConfigProperty = Value Prelude.Bool
  set newValue SharingConfigProperty {}
    = SharingConfigProperty {enabled = newValue, ..}