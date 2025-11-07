module Stratosphere.PCS.Cluster.SlurmConfigurationProperty (
        module Exports, SlurmConfigurationProperty(..),
        mkSlurmConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCS.Cluster.AccountingProperty as Exports
import {-# SOURCE #-} Stratosphere.PCS.Cluster.AuthKeyProperty as Exports
import {-# SOURCE #-} Stratosphere.PCS.Cluster.SlurmCustomSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlurmConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html>
    SlurmConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-accounting>
                                accounting :: (Prelude.Maybe AccountingProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-authkey>
                                authKey :: (Prelude.Maybe AuthKeyProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-scaledownidletimeinseconds>
                                scaleDownIdleTimeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-slurmcustomsettings>
                                slurmCustomSettings :: (Prelude.Maybe [SlurmCustomSettingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlurmConfigurationProperty :: SlurmConfigurationProperty
mkSlurmConfigurationProperty
  = SlurmConfigurationProperty
      {haddock_workaround_ = (), accounting = Prelude.Nothing,
       authKey = Prelude.Nothing,
       scaleDownIdleTimeInSeconds = Prelude.Nothing,
       slurmCustomSettings = Prelude.Nothing}
instance ToResourceProperties SlurmConfigurationProperty where
  toResourceProperties SlurmConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Cluster.SlurmConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Accounting" Prelude.<$> accounting,
                            (JSON..=) "AuthKey" Prelude.<$> authKey,
                            (JSON..=) "ScaleDownIdleTimeInSeconds"
                              Prelude.<$> scaleDownIdleTimeInSeconds,
                            (JSON..=) "SlurmCustomSettings" Prelude.<$> slurmCustomSettings])}
instance JSON.ToJSON SlurmConfigurationProperty where
  toJSON SlurmConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Accounting" Prelude.<$> accounting,
               (JSON..=) "AuthKey" Prelude.<$> authKey,
               (JSON..=) "ScaleDownIdleTimeInSeconds"
                 Prelude.<$> scaleDownIdleTimeInSeconds,
               (JSON..=) "SlurmCustomSettings" Prelude.<$> slurmCustomSettings]))
instance Property "Accounting" SlurmConfigurationProperty where
  type PropertyType "Accounting" SlurmConfigurationProperty = AccountingProperty
  set newValue SlurmConfigurationProperty {..}
    = SlurmConfigurationProperty
        {accounting = Prelude.pure newValue, ..}
instance Property "AuthKey" SlurmConfigurationProperty where
  type PropertyType "AuthKey" SlurmConfigurationProperty = AuthKeyProperty
  set newValue SlurmConfigurationProperty {..}
    = SlurmConfigurationProperty {authKey = Prelude.pure newValue, ..}
instance Property "ScaleDownIdleTimeInSeconds" SlurmConfigurationProperty where
  type PropertyType "ScaleDownIdleTimeInSeconds" SlurmConfigurationProperty = Value Prelude.Integer
  set newValue SlurmConfigurationProperty {..}
    = SlurmConfigurationProperty
        {scaleDownIdleTimeInSeconds = Prelude.pure newValue, ..}
instance Property "SlurmCustomSettings" SlurmConfigurationProperty where
  type PropertyType "SlurmCustomSettings" SlurmConfigurationProperty = [SlurmCustomSettingProperty]
  set newValue SlurmConfigurationProperty {..}
    = SlurmConfigurationProperty
        {slurmCustomSettings = Prelude.pure newValue, ..}