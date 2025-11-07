module Stratosphere.ARCRegionSwitch.Plan.RegionSwitchPlanConfigurationProperty (
        RegionSwitchPlanConfigurationProperty(..),
        mkRegionSwitchPlanConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionSwitchPlanConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-regionswitchplanconfiguration.html>
    RegionSwitchPlanConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-regionswitchplanconfiguration.html#cfn-arcregionswitch-plan-regionswitchplanconfiguration-arn>
                                           arn :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-regionswitchplanconfiguration.html#cfn-arcregionswitch-plan-regionswitchplanconfiguration-crossaccountrole>
                                           crossAccountRole :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-regionswitchplanconfiguration.html#cfn-arcregionswitch-plan-regionswitchplanconfiguration-externalid>
                                           externalId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegionSwitchPlanConfigurationProperty ::
  Value Prelude.Text -> RegionSwitchPlanConfigurationProperty
mkRegionSwitchPlanConfigurationProperty arn
  = RegionSwitchPlanConfigurationProperty
      {haddock_workaround_ = (), arn = arn,
       crossAccountRole = Prelude.Nothing, externalId = Prelude.Nothing}
instance ToResourceProperties RegionSwitchPlanConfigurationProperty where
  toResourceProperties RegionSwitchPlanConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.RegionSwitchPlanConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn]
                           (Prelude.catMaybes
                              [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                               (JSON..=) "ExternalId" Prelude.<$> externalId]))}
instance JSON.ToJSON RegionSwitchPlanConfigurationProperty where
  toJSON RegionSwitchPlanConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn]
              (Prelude.catMaybes
                 [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                  (JSON..=) "ExternalId" Prelude.<$> externalId])))
instance Property "Arn" RegionSwitchPlanConfigurationProperty where
  type PropertyType "Arn" RegionSwitchPlanConfigurationProperty = Value Prelude.Text
  set newValue RegionSwitchPlanConfigurationProperty {..}
    = RegionSwitchPlanConfigurationProperty {arn = newValue, ..}
instance Property "CrossAccountRole" RegionSwitchPlanConfigurationProperty where
  type PropertyType "CrossAccountRole" RegionSwitchPlanConfigurationProperty = Value Prelude.Text
  set newValue RegionSwitchPlanConfigurationProperty {..}
    = RegionSwitchPlanConfigurationProperty
        {crossAccountRole = Prelude.pure newValue, ..}
instance Property "ExternalId" RegionSwitchPlanConfigurationProperty where
  type PropertyType "ExternalId" RegionSwitchPlanConfigurationProperty = Value Prelude.Text
  set newValue RegionSwitchPlanConfigurationProperty {..}
    = RegionSwitchPlanConfigurationProperty
        {externalId = Prelude.pure newValue, ..}