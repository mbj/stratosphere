module Stratosphere.DataZone.ProjectProfile.EnvironmentConfigurationParametersDetailsProperty (
        module Exports,
        EnvironmentConfigurationParametersDetailsProperty(..),
        mkEnvironmentConfigurationParametersDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.ProjectProfile.EnvironmentConfigurationParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentConfigurationParametersDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparametersdetails.html>
    EnvironmentConfigurationParametersDetailsProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparametersdetails.html#cfn-datazone-projectprofile-environmentconfigurationparametersdetails-parameteroverrides>
                                                       parameterOverrides :: (Prelude.Maybe [EnvironmentConfigurationParameterProperty]),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparametersdetails.html#cfn-datazone-projectprofile-environmentconfigurationparametersdetails-resolvedparameters>
                                                       resolvedParameters :: (Prelude.Maybe [EnvironmentConfigurationParameterProperty]),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparametersdetails.html#cfn-datazone-projectprofile-environmentconfigurationparametersdetails-ssmpath>
                                                       ssmPath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentConfigurationParametersDetailsProperty ::
  EnvironmentConfigurationParametersDetailsProperty
mkEnvironmentConfigurationParametersDetailsProperty
  = EnvironmentConfigurationParametersDetailsProperty
      {haddock_workaround_ = (), parameterOverrides = Prelude.Nothing,
       resolvedParameters = Prelude.Nothing, ssmPath = Prelude.Nothing}
instance ToResourceProperties EnvironmentConfigurationParametersDetailsProperty where
  toResourceProperties
    EnvironmentConfigurationParametersDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::ProjectProfile.EnvironmentConfigurationParametersDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ParameterOverrides" Prelude.<$> parameterOverrides,
                            (JSON..=) "ResolvedParameters" Prelude.<$> resolvedParameters,
                            (JSON..=) "SsmPath" Prelude.<$> ssmPath])}
instance JSON.ToJSON EnvironmentConfigurationParametersDetailsProperty where
  toJSON EnvironmentConfigurationParametersDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ParameterOverrides" Prelude.<$> parameterOverrides,
               (JSON..=) "ResolvedParameters" Prelude.<$> resolvedParameters,
               (JSON..=) "SsmPath" Prelude.<$> ssmPath]))
instance Property "ParameterOverrides" EnvironmentConfigurationParametersDetailsProperty where
  type PropertyType "ParameterOverrides" EnvironmentConfigurationParametersDetailsProperty = [EnvironmentConfigurationParameterProperty]
  set newValue EnvironmentConfigurationParametersDetailsProperty {..}
    = EnvironmentConfigurationParametersDetailsProperty
        {parameterOverrides = Prelude.pure newValue, ..}
instance Property "ResolvedParameters" EnvironmentConfigurationParametersDetailsProperty where
  type PropertyType "ResolvedParameters" EnvironmentConfigurationParametersDetailsProperty = [EnvironmentConfigurationParameterProperty]
  set newValue EnvironmentConfigurationParametersDetailsProperty {..}
    = EnvironmentConfigurationParametersDetailsProperty
        {resolvedParameters = Prelude.pure newValue, ..}
instance Property "SsmPath" EnvironmentConfigurationParametersDetailsProperty where
  type PropertyType "SsmPath" EnvironmentConfigurationParametersDetailsProperty = Value Prelude.Text
  set newValue EnvironmentConfigurationParametersDetailsProperty {..}
    = EnvironmentConfigurationParametersDetailsProperty
        {ssmPath = Prelude.pure newValue, ..}