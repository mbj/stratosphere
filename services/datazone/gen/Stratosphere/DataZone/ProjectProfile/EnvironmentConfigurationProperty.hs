module Stratosphere.DataZone.ProjectProfile.EnvironmentConfigurationProperty (
        module Exports, EnvironmentConfigurationProperty(..),
        mkEnvironmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.ProjectProfile.AwsAccountProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.ProjectProfile.EnvironmentConfigurationParametersDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.ProjectProfile.RegionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html>
    EnvironmentConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-awsaccount>
                                      awsAccount :: (Prelude.Maybe AwsAccountProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-awsregion>
                                      awsRegion :: RegionProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-configurationparameters>
                                      configurationParameters :: (Prelude.Maybe EnvironmentConfigurationParametersDetailsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-deploymentmode>
                                      deploymentMode :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-deploymentorder>
                                      deploymentOrder :: (Prelude.Maybe (Value Prelude.Double)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-description>
                                      description :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-environmentblueprintid>
                                      environmentBlueprintId :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-environmentconfigurationid>
                                      environmentConfigurationId :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-name>
                                      name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentConfigurationProperty ::
  RegionProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> EnvironmentConfigurationProperty
mkEnvironmentConfigurationProperty
  awsRegion
  environmentBlueprintId
  name
  = EnvironmentConfigurationProperty
      {haddock_workaround_ = (), awsRegion = awsRegion,
       environmentBlueprintId = environmentBlueprintId, name = name,
       awsAccount = Prelude.Nothing,
       configurationParameters = Prelude.Nothing,
       deploymentMode = Prelude.Nothing,
       deploymentOrder = Prelude.Nothing, description = Prelude.Nothing,
       environmentConfigurationId = Prelude.Nothing}
instance ToResourceProperties EnvironmentConfigurationProperty where
  toResourceProperties EnvironmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::ProjectProfile.EnvironmentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsRegion" JSON..= awsRegion,
                            "EnvironmentBlueprintId" JSON..= environmentBlueprintId,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AwsAccount" Prelude.<$> awsAccount,
                               (JSON..=) "ConfigurationParameters"
                                 Prelude.<$> configurationParameters,
                               (JSON..=) "DeploymentMode" Prelude.<$> deploymentMode,
                               (JSON..=) "DeploymentOrder" Prelude.<$> deploymentOrder,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnvironmentConfigurationId"
                                 Prelude.<$> environmentConfigurationId]))}
instance JSON.ToJSON EnvironmentConfigurationProperty where
  toJSON EnvironmentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsRegion" JSON..= awsRegion,
               "EnvironmentBlueprintId" JSON..= environmentBlueprintId,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AwsAccount" Prelude.<$> awsAccount,
                  (JSON..=) "ConfigurationParameters"
                    Prelude.<$> configurationParameters,
                  (JSON..=) "DeploymentMode" Prelude.<$> deploymentMode,
                  (JSON..=) "DeploymentOrder" Prelude.<$> deploymentOrder,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnvironmentConfigurationId"
                    Prelude.<$> environmentConfigurationId])))
instance Property "AwsAccount" EnvironmentConfigurationProperty where
  type PropertyType "AwsAccount" EnvironmentConfigurationProperty = AwsAccountProperty
  set newValue EnvironmentConfigurationProperty {..}
    = EnvironmentConfigurationProperty
        {awsAccount = Prelude.pure newValue, ..}
instance Property "AwsRegion" EnvironmentConfigurationProperty where
  type PropertyType "AwsRegion" EnvironmentConfigurationProperty = RegionProperty
  set newValue EnvironmentConfigurationProperty {..}
    = EnvironmentConfigurationProperty {awsRegion = newValue, ..}
instance Property "ConfigurationParameters" EnvironmentConfigurationProperty where
  type PropertyType "ConfigurationParameters" EnvironmentConfigurationProperty = EnvironmentConfigurationParametersDetailsProperty
  set newValue EnvironmentConfigurationProperty {..}
    = EnvironmentConfigurationProperty
        {configurationParameters = Prelude.pure newValue, ..}
instance Property "DeploymentMode" EnvironmentConfigurationProperty where
  type PropertyType "DeploymentMode" EnvironmentConfigurationProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationProperty {..}
    = EnvironmentConfigurationProperty
        {deploymentMode = Prelude.pure newValue, ..}
instance Property "DeploymentOrder" EnvironmentConfigurationProperty where
  type PropertyType "DeploymentOrder" EnvironmentConfigurationProperty = Value Prelude.Double
  set newValue EnvironmentConfigurationProperty {..}
    = EnvironmentConfigurationProperty
        {deploymentOrder = Prelude.pure newValue, ..}
instance Property "Description" EnvironmentConfigurationProperty where
  type PropertyType "Description" EnvironmentConfigurationProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationProperty {..}
    = EnvironmentConfigurationProperty
        {description = Prelude.pure newValue, ..}
instance Property "EnvironmentBlueprintId" EnvironmentConfigurationProperty where
  type PropertyType "EnvironmentBlueprintId" EnvironmentConfigurationProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationProperty {..}
    = EnvironmentConfigurationProperty
        {environmentBlueprintId = newValue, ..}
instance Property "EnvironmentConfigurationId" EnvironmentConfigurationProperty where
  type PropertyType "EnvironmentConfigurationId" EnvironmentConfigurationProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationProperty {..}
    = EnvironmentConfigurationProperty
        {environmentConfigurationId = Prelude.pure newValue, ..}
instance Property "Name" EnvironmentConfigurationProperty where
  type PropertyType "Name" EnvironmentConfigurationProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationProperty {..}
    = EnvironmentConfigurationProperty {name = newValue, ..}