module Stratosphere.DataZone.EnvironmentBlueprintConfiguration.LakeFormationConfigurationProperty (
        LakeFormationConfigurationProperty(..),
        mkLakeFormationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LakeFormationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-lakeformationconfiguration.html>
    LakeFormationConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-lakeformationconfiguration.html#cfn-datazone-environmentblueprintconfiguration-lakeformationconfiguration-locationregistrationexcludes3locations>
                                        locationRegistrationExcludeS3Locations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-lakeformationconfiguration.html#cfn-datazone-environmentblueprintconfiguration-lakeformationconfiguration-locationregistrationrole>
                                        locationRegistrationRole :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLakeFormationConfigurationProperty ::
  LakeFormationConfigurationProperty
mkLakeFormationConfigurationProperty
  = LakeFormationConfigurationProperty
      {haddock_workaround_ = (),
       locationRegistrationExcludeS3Locations = Prelude.Nothing,
       locationRegistrationRole = Prelude.Nothing}
instance ToResourceProperties LakeFormationConfigurationProperty where
  toResourceProperties LakeFormationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::EnvironmentBlueprintConfiguration.LakeFormationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LocationRegistrationExcludeS3Locations"
                              Prelude.<$> locationRegistrationExcludeS3Locations,
                            (JSON..=) "LocationRegistrationRole"
                              Prelude.<$> locationRegistrationRole])}
instance JSON.ToJSON LakeFormationConfigurationProperty where
  toJSON LakeFormationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LocationRegistrationExcludeS3Locations"
                 Prelude.<$> locationRegistrationExcludeS3Locations,
               (JSON..=) "LocationRegistrationRole"
                 Prelude.<$> locationRegistrationRole]))
instance Property "LocationRegistrationExcludeS3Locations" LakeFormationConfigurationProperty where
  type PropertyType "LocationRegistrationExcludeS3Locations" LakeFormationConfigurationProperty = ValueList Prelude.Text
  set newValue LakeFormationConfigurationProperty {..}
    = LakeFormationConfigurationProperty
        {locationRegistrationExcludeS3Locations = Prelude.pure newValue,
         ..}
instance Property "LocationRegistrationRole" LakeFormationConfigurationProperty where
  type PropertyType "LocationRegistrationRole" LakeFormationConfigurationProperty = Value Prelude.Text
  set newValue LakeFormationConfigurationProperty {..}
    = LakeFormationConfigurationProperty
        {locationRegistrationRole = Prelude.pure newValue, ..}