module Stratosphere.S3.AccessPoint.VpcConfigurationProperty (
        VpcConfigurationProperty(..), mkVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigurationProperty
  = VpcConfigurationProperty {vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConfigurationProperty :: VpcConfigurationProperty
mkVpcConfigurationProperty
  = VpcConfigurationProperty {vpcId = Prelude.Nothing}
instance ToResourceProperties VpcConfigurationProperty where
  toResourceProperties VpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::AccessPoint.VpcConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "VpcId" Prelude.<$> vpcId])}
instance JSON.ToJSON VpcConfigurationProperty where
  toJSON VpcConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "VpcId" Prelude.<$> vpcId]))
instance Property "VpcId" VpcConfigurationProperty where
  type PropertyType "VpcId" VpcConfigurationProperty = Value Prelude.Text
  set newValue VpcConfigurationProperty {}
    = VpcConfigurationProperty {vpcId = Prelude.pure newValue, ..}