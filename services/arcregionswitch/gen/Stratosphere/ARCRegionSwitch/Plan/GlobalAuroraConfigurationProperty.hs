module Stratosphere.ARCRegionSwitch.Plan.GlobalAuroraConfigurationProperty (
        module Exports, GlobalAuroraConfigurationProperty(..),
        mkGlobalAuroraConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.GlobalAuroraUngracefulProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalAuroraConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraconfiguration.html>
    GlobalAuroraConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraconfiguration.html#cfn-arcregionswitch-plan-globalauroraconfiguration-behavior>
                                       behavior :: JSON.Object,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraconfiguration.html#cfn-arcregionswitch-plan-globalauroraconfiguration-crossaccountrole>
                                       crossAccountRole :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraconfiguration.html#cfn-arcregionswitch-plan-globalauroraconfiguration-databaseclusterarns>
                                       databaseClusterArns :: (ValueList Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraconfiguration.html#cfn-arcregionswitch-plan-globalauroraconfiguration-externalid>
                                       externalId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraconfiguration.html#cfn-arcregionswitch-plan-globalauroraconfiguration-globalclusteridentifier>
                                       globalClusterIdentifier :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraconfiguration.html#cfn-arcregionswitch-plan-globalauroraconfiguration-timeoutminutes>
                                       timeoutMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraconfiguration.html#cfn-arcregionswitch-plan-globalauroraconfiguration-ungraceful>
                                       ungraceful :: (Prelude.Maybe GlobalAuroraUngracefulProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalAuroraConfigurationProperty ::
  JSON.Object
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> GlobalAuroraConfigurationProperty
mkGlobalAuroraConfigurationProperty
  behavior
  databaseClusterArns
  globalClusterIdentifier
  = GlobalAuroraConfigurationProperty
      {haddock_workaround_ = (), behavior = behavior,
       databaseClusterArns = databaseClusterArns,
       globalClusterIdentifier = globalClusterIdentifier,
       crossAccountRole = Prelude.Nothing, externalId = Prelude.Nothing,
       timeoutMinutes = Prelude.Nothing, ungraceful = Prelude.Nothing}
instance ToResourceProperties GlobalAuroraConfigurationProperty where
  toResourceProperties GlobalAuroraConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.GlobalAuroraConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Behavior" JSON..= behavior,
                            "DatabaseClusterArns" JSON..= databaseClusterArns,
                            "GlobalClusterIdentifier" JSON..= globalClusterIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                               (JSON..=) "ExternalId" Prelude.<$> externalId,
                               (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                               (JSON..=) "Ungraceful" Prelude.<$> ungraceful]))}
instance JSON.ToJSON GlobalAuroraConfigurationProperty where
  toJSON GlobalAuroraConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Behavior" JSON..= behavior,
               "DatabaseClusterArns" JSON..= databaseClusterArns,
               "GlobalClusterIdentifier" JSON..= globalClusterIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                  (JSON..=) "ExternalId" Prelude.<$> externalId,
                  (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                  (JSON..=) "Ungraceful" Prelude.<$> ungraceful])))
instance Property "Behavior" GlobalAuroraConfigurationProperty where
  type PropertyType "Behavior" GlobalAuroraConfigurationProperty = JSON.Object
  set newValue GlobalAuroraConfigurationProperty {..}
    = GlobalAuroraConfigurationProperty {behavior = newValue, ..}
instance Property "CrossAccountRole" GlobalAuroraConfigurationProperty where
  type PropertyType "CrossAccountRole" GlobalAuroraConfigurationProperty = Value Prelude.Text
  set newValue GlobalAuroraConfigurationProperty {..}
    = GlobalAuroraConfigurationProperty
        {crossAccountRole = Prelude.pure newValue, ..}
instance Property "DatabaseClusterArns" GlobalAuroraConfigurationProperty where
  type PropertyType "DatabaseClusterArns" GlobalAuroraConfigurationProperty = ValueList Prelude.Text
  set newValue GlobalAuroraConfigurationProperty {..}
    = GlobalAuroraConfigurationProperty
        {databaseClusterArns = newValue, ..}
instance Property "ExternalId" GlobalAuroraConfigurationProperty where
  type PropertyType "ExternalId" GlobalAuroraConfigurationProperty = Value Prelude.Text
  set newValue GlobalAuroraConfigurationProperty {..}
    = GlobalAuroraConfigurationProperty
        {externalId = Prelude.pure newValue, ..}
instance Property "GlobalClusterIdentifier" GlobalAuroraConfigurationProperty where
  type PropertyType "GlobalClusterIdentifier" GlobalAuroraConfigurationProperty = Value Prelude.Text
  set newValue GlobalAuroraConfigurationProperty {..}
    = GlobalAuroraConfigurationProperty
        {globalClusterIdentifier = newValue, ..}
instance Property "TimeoutMinutes" GlobalAuroraConfigurationProperty where
  type PropertyType "TimeoutMinutes" GlobalAuroraConfigurationProperty = Value Prelude.Double
  set newValue GlobalAuroraConfigurationProperty {..}
    = GlobalAuroraConfigurationProperty
        {timeoutMinutes = Prelude.pure newValue, ..}
instance Property "Ungraceful" GlobalAuroraConfigurationProperty where
  type PropertyType "Ungraceful" GlobalAuroraConfigurationProperty = GlobalAuroraUngracefulProperty
  set newValue GlobalAuroraConfigurationProperty {..}
    = GlobalAuroraConfigurationProperty
        {ungraceful = Prelude.pure newValue, ..}