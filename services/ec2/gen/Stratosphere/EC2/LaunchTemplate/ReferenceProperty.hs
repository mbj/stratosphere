module Stratosphere.EC2.LaunchTemplate.ReferenceProperty (
        ReferenceProperty(..), mkReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-reference.html>
    ReferenceProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-reference.html#cfn-ec2-launchtemplate-reference-instancefamily>
                       instanceFamily :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceProperty :: ReferenceProperty
mkReferenceProperty
  = ReferenceProperty
      {haddock_workaround_ = (), instanceFamily = Prelude.Nothing}
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
  set newValue ReferenceProperty {..}
    = ReferenceProperty {instanceFamily = Prelude.pure newValue, ..}