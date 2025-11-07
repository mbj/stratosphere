module Stratosphere.PCS.ComputeNodeGroup.SlurmConfigurationProperty (
        module Exports, SlurmConfigurationProperty(..),
        mkSlurmConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCS.ComputeNodeGroup.SlurmCustomSettingProperty as Exports
import Stratosphere.ResourceProperties
data SlurmConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-slurmconfiguration.html>
    SlurmConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-slurmconfiguration.html#cfn-pcs-computenodegroup-slurmconfiguration-slurmcustomsettings>
                                slurmCustomSettings :: (Prelude.Maybe [SlurmCustomSettingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlurmConfigurationProperty :: SlurmConfigurationProperty
mkSlurmConfigurationProperty
  = SlurmConfigurationProperty
      {haddock_workaround_ = (), slurmCustomSettings = Prelude.Nothing}
instance ToResourceProperties SlurmConfigurationProperty where
  toResourceProperties SlurmConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::ComputeNodeGroup.SlurmConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SlurmCustomSettings" Prelude.<$> slurmCustomSettings])}
instance JSON.ToJSON SlurmConfigurationProperty where
  toJSON SlurmConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SlurmCustomSettings" Prelude.<$> slurmCustomSettings]))
instance Property "SlurmCustomSettings" SlurmConfigurationProperty where
  type PropertyType "SlurmCustomSettings" SlurmConfigurationProperty = [SlurmCustomSettingProperty]
  set newValue SlurmConfigurationProperty {..}
    = SlurmConfigurationProperty
        {slurmCustomSettings = Prelude.pure newValue, ..}