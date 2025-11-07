module Stratosphere.Deadline.Fleet.VpcConfigurationProperty (
        VpcConfigurationProperty(..), mkVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-vpcconfiguration.html>
    VpcConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-vpcconfiguration.html#cfn-deadline-fleet-vpcconfiguration-resourceconfigurationarns>
                              resourceConfigurationArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConfigurationProperty :: VpcConfigurationProperty
mkVpcConfigurationProperty
  = VpcConfigurationProperty
      {haddock_workaround_ = (),
       resourceConfigurationArns = Prelude.Nothing}
instance ToResourceProperties VpcConfigurationProperty where
  toResourceProperties VpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.VpcConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceConfigurationArns"
                              Prelude.<$> resourceConfigurationArns])}
instance JSON.ToJSON VpcConfigurationProperty where
  toJSON VpcConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceConfigurationArns"
                 Prelude.<$> resourceConfigurationArns]))
instance Property "ResourceConfigurationArns" VpcConfigurationProperty where
  type PropertyType "ResourceConfigurationArns" VpcConfigurationProperty = ValueList Prelude.Text
  set newValue VpcConfigurationProperty {..}
    = VpcConfigurationProperty
        {resourceConfigurationArns = Prelude.pure newValue, ..}