module Stratosphere.Glue.TableOptimizer.VpcConfigurationProperty (
        VpcConfigurationProperty(..), mkVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-vpcconfiguration.html>
    VpcConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-vpcconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-vpcconfiguration-glueconnectionname>
                              glueConnectionName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConfigurationProperty :: VpcConfigurationProperty
mkVpcConfigurationProperty
  = VpcConfigurationProperty
      {haddock_workaround_ = (), glueConnectionName = Prelude.Nothing}
instance ToResourceProperties VpcConfigurationProperty where
  toResourceProperties VpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::TableOptimizer.VpcConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GlueConnectionName" Prelude.<$> glueConnectionName])}
instance JSON.ToJSON VpcConfigurationProperty where
  toJSON VpcConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GlueConnectionName" Prelude.<$> glueConnectionName]))
instance Property "GlueConnectionName" VpcConfigurationProperty where
  type PropertyType "GlueConnectionName" VpcConfigurationProperty = Value Prelude.Text
  set newValue VpcConfigurationProperty {..}
    = VpcConfigurationProperty
        {glueConnectionName = Prelude.pure newValue, ..}