module Stratosphere.ARCRegionSwitch.Plan.ArcRoutingControlConfigurationProperty (
        ArcRoutingControlConfigurationProperty(..),
        mkArcRoutingControlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArcRoutingControlConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-arcroutingcontrolconfiguration.html>
    ArcRoutingControlConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-arcroutingcontrolconfiguration.html#cfn-arcregionswitch-plan-arcroutingcontrolconfiguration-crossaccountrole>
                                            crossAccountRole :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-arcroutingcontrolconfiguration.html#cfn-arcregionswitch-plan-arcroutingcontrolconfiguration-externalid>
                                            externalId :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-arcroutingcontrolconfiguration.html#cfn-arcregionswitch-plan-arcroutingcontrolconfiguration-regionandroutingcontrols>
                                            regionAndRoutingControls :: JSON.Object,
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-arcroutingcontrolconfiguration.html#cfn-arcregionswitch-plan-arcroutingcontrolconfiguration-timeoutminutes>
                                            timeoutMinutes :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArcRoutingControlConfigurationProperty ::
  JSON.Object -> ArcRoutingControlConfigurationProperty
mkArcRoutingControlConfigurationProperty regionAndRoutingControls
  = ArcRoutingControlConfigurationProperty
      {haddock_workaround_ = (),
       regionAndRoutingControls = regionAndRoutingControls,
       crossAccountRole = Prelude.Nothing, externalId = Prelude.Nothing,
       timeoutMinutes = Prelude.Nothing}
instance ToResourceProperties ArcRoutingControlConfigurationProperty where
  toResourceProperties ArcRoutingControlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.ArcRoutingControlConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RegionAndRoutingControls" JSON..= regionAndRoutingControls]
                           (Prelude.catMaybes
                              [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                               (JSON..=) "ExternalId" Prelude.<$> externalId,
                               (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes]))}
instance JSON.ToJSON ArcRoutingControlConfigurationProperty where
  toJSON ArcRoutingControlConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RegionAndRoutingControls" JSON..= regionAndRoutingControls]
              (Prelude.catMaybes
                 [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                  (JSON..=) "ExternalId" Prelude.<$> externalId,
                  (JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes])))
instance Property "CrossAccountRole" ArcRoutingControlConfigurationProperty where
  type PropertyType "CrossAccountRole" ArcRoutingControlConfigurationProperty = Value Prelude.Text
  set newValue ArcRoutingControlConfigurationProperty {..}
    = ArcRoutingControlConfigurationProperty
        {crossAccountRole = Prelude.pure newValue, ..}
instance Property "ExternalId" ArcRoutingControlConfigurationProperty where
  type PropertyType "ExternalId" ArcRoutingControlConfigurationProperty = Value Prelude.Text
  set newValue ArcRoutingControlConfigurationProperty {..}
    = ArcRoutingControlConfigurationProperty
        {externalId = Prelude.pure newValue, ..}
instance Property "RegionAndRoutingControls" ArcRoutingControlConfigurationProperty where
  type PropertyType "RegionAndRoutingControls" ArcRoutingControlConfigurationProperty = JSON.Object
  set newValue ArcRoutingControlConfigurationProperty {..}
    = ArcRoutingControlConfigurationProperty
        {regionAndRoutingControls = newValue, ..}
instance Property "TimeoutMinutes" ArcRoutingControlConfigurationProperty where
  type PropertyType "TimeoutMinutes" ArcRoutingControlConfigurationProperty = Value Prelude.Double
  set newValue ArcRoutingControlConfigurationProperty {..}
    = ArcRoutingControlConfigurationProperty
        {timeoutMinutes = Prelude.pure newValue, ..}