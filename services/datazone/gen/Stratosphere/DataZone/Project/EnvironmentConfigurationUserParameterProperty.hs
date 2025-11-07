module Stratosphere.DataZone.Project.EnvironmentConfigurationUserParameterProperty (
        module Exports, EnvironmentConfigurationUserParameterProperty(..),
        mkEnvironmentConfigurationUserParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Project.EnvironmentParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentConfigurationUserParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-project-environmentconfigurationuserparameter.html>
    EnvironmentConfigurationUserParameterProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-project-environmentconfigurationuserparameter.html#cfn-datazone-project-environmentconfigurationuserparameter-environmentconfigurationname>
                                                   environmentConfigurationName :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-project-environmentconfigurationuserparameter.html#cfn-datazone-project-environmentconfigurationuserparameter-environmentid>
                                                   environmentId :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-project-environmentconfigurationuserparameter.html#cfn-datazone-project-environmentconfigurationuserparameter-environmentparameters>
                                                   environmentParameters :: (Prelude.Maybe [EnvironmentParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentConfigurationUserParameterProperty ::
  EnvironmentConfigurationUserParameterProperty
mkEnvironmentConfigurationUserParameterProperty
  = EnvironmentConfigurationUserParameterProperty
      {haddock_workaround_ = (),
       environmentConfigurationName = Prelude.Nothing,
       environmentId = Prelude.Nothing,
       environmentParameters = Prelude.Nothing}
instance ToResourceProperties EnvironmentConfigurationUserParameterProperty where
  toResourceProperties
    EnvironmentConfigurationUserParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Project.EnvironmentConfigurationUserParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnvironmentConfigurationName"
                              Prelude.<$> environmentConfigurationName,
                            (JSON..=) "EnvironmentId" Prelude.<$> environmentId,
                            (JSON..=) "EnvironmentParameters"
                              Prelude.<$> environmentParameters])}
instance JSON.ToJSON EnvironmentConfigurationUserParameterProperty where
  toJSON EnvironmentConfigurationUserParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnvironmentConfigurationName"
                 Prelude.<$> environmentConfigurationName,
               (JSON..=) "EnvironmentId" Prelude.<$> environmentId,
               (JSON..=) "EnvironmentParameters"
                 Prelude.<$> environmentParameters]))
instance Property "EnvironmentConfigurationName" EnvironmentConfigurationUserParameterProperty where
  type PropertyType "EnvironmentConfigurationName" EnvironmentConfigurationUserParameterProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationUserParameterProperty {..}
    = EnvironmentConfigurationUserParameterProperty
        {environmentConfigurationName = Prelude.pure newValue, ..}
instance Property "EnvironmentId" EnvironmentConfigurationUserParameterProperty where
  type PropertyType "EnvironmentId" EnvironmentConfigurationUserParameterProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationUserParameterProperty {..}
    = EnvironmentConfigurationUserParameterProperty
        {environmentId = Prelude.pure newValue, ..}
instance Property "EnvironmentParameters" EnvironmentConfigurationUserParameterProperty where
  type PropertyType "EnvironmentParameters" EnvironmentConfigurationUserParameterProperty = [EnvironmentParameterProperty]
  set newValue EnvironmentConfigurationUserParameterProperty {..}
    = EnvironmentConfigurationUserParameterProperty
        {environmentParameters = Prelude.pure newValue, ..}