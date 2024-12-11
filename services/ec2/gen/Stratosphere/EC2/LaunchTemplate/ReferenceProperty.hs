module Stratosphere.EC2.LaunchTemplate.ReferenceProperty (
        ReferenceProperty(..), mkReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceProperty
  = ReferenceProperty {instanceFamily :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceProperty :: ReferenceProperty
mkReferenceProperty
  = ReferenceProperty {instanceFamily = Prelude.Nothing}
instance ToResourceProperties ReferenceProperty where
  toResourceProperties ReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.Reference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceFamily" Prelude.<$> instanceFamily])}
instance JSON.ToJSON ReferenceProperty where
  toJSON ReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceFamily" Prelude.<$> instanceFamily]))
instance Property "InstanceFamily" ReferenceProperty where
  type PropertyType "InstanceFamily" ReferenceProperty = Value Prelude.Text
  set newValue ReferenceProperty {}
    = ReferenceProperty {instanceFamily = Prelude.pure newValue, ..}