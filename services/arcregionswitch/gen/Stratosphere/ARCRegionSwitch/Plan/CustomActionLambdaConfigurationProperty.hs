module Stratosphere.ARCRegionSwitch.Plan.CustomActionLambdaConfigurationProperty (
        module Exports, CustomActionLambdaConfigurationProperty(..),
        mkCustomActionLambdaConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.LambdaUngracefulProperty as Exports
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.LambdasProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomActionLambdaConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-customactionlambdaconfiguration.html>
    CustomActionLambdaConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-customactionlambdaconfiguration.html#cfn-arcregionswitch-plan-customactionlambdaconfiguration-lambdas>
                                             lambdas :: [LambdasProperty],
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-customactionlambdaconfiguration.html#cfn-arcregionswitch-plan-customactionlambdaconfiguration-regiontorun>
                                             regionToRun :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-customactionlambdaconfiguration.html#cfn-arcregionswitch-plan-customactionlambdaconfiguration-retryintervalminutes>
                                             retryIntervalMinutes :: (Value Prelude.Double),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-customactionlambdaconfiguration.html#cfn-arcregionswitch-plan-customactionlambdaconfiguration-timeoutminutes>
                                             timeoutMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-customactionlambdaconfiguration.html#cfn-arcregionswitch-plan-customactionlambdaconfiguration-ungraceful>
                                             ungraceful :: (Prelude.Maybe LambdaUngracefulProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionLambdaConfigurationProperty ::
  [LambdasProperty]
  -> Value Prelude.Text
     -> Value Prelude.Double -> CustomActionLambdaConfigurationProperty
mkCustomActionLambdaConfigurationProperty
  lambdas
  regionToRun
  retryIntervalMinutes
  = CustomActionLambdaConfigurationProperty
      {haddock_workaround_ = (), lambdas = lambdas,
       regionToRun = regionToRun,
       retryIntervalMinutes = retryIntervalMinutes,
       timeoutMinutes = Prelude.Nothing, ungraceful = Prelude.Nothing}
instance ToResourceProperties CustomActionLambdaConfigurationProperty where
  toResourceProperties CustomActionLambdaConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.CustomActionLambdaConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Lambdas" JSON..= lambdas, "RegionToRun" JSON..= regionToRun,
                            "RetryIntervalMinutes" JSON..= retryIntervalMinutes]
                           (Prelude.catMaybes
                              [(JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                               (JSON..=) "Ungraceful" Prelude.<$> ungraceful]))}
instance JSON.ToJSON CustomActionLambdaConfigurationProperty where
  toJSON CustomActionLambdaConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Lambdas" JSON..= lambdas, "RegionToRun" JSON..= regionToRun,
               "RetryIntervalMinutes" JSON..= retryIntervalMinutes]
              (Prelude.catMaybes
                 [(JSON..=) "TimeoutMinutes" Prelude.<$> timeoutMinutes,
                  (JSON..=) "Ungraceful" Prelude.<$> ungraceful])))
instance Property "Lambdas" CustomActionLambdaConfigurationProperty where
  type PropertyType "Lambdas" CustomActionLambdaConfigurationProperty = [LambdasProperty]
  set newValue CustomActionLambdaConfigurationProperty {..}
    = CustomActionLambdaConfigurationProperty {lambdas = newValue, ..}
instance Property "RegionToRun" CustomActionLambdaConfigurationProperty where
  type PropertyType "RegionToRun" CustomActionLambdaConfigurationProperty = Value Prelude.Text
  set newValue CustomActionLambdaConfigurationProperty {..}
    = CustomActionLambdaConfigurationProperty
        {regionToRun = newValue, ..}
instance Property "RetryIntervalMinutes" CustomActionLambdaConfigurationProperty where
  type PropertyType "RetryIntervalMinutes" CustomActionLambdaConfigurationProperty = Value Prelude.Double
  set newValue CustomActionLambdaConfigurationProperty {..}
    = CustomActionLambdaConfigurationProperty
        {retryIntervalMinutes = newValue, ..}
instance Property "TimeoutMinutes" CustomActionLambdaConfigurationProperty where
  type PropertyType "TimeoutMinutes" CustomActionLambdaConfigurationProperty = Value Prelude.Double
  set newValue CustomActionLambdaConfigurationProperty {..}
    = CustomActionLambdaConfigurationProperty
        {timeoutMinutes = Prelude.pure newValue, ..}
instance Property "Ungraceful" CustomActionLambdaConfigurationProperty where
  type PropertyType "Ungraceful" CustomActionLambdaConfigurationProperty = LambdaUngracefulProperty
  set newValue CustomActionLambdaConfigurationProperty {..}
    = CustomActionLambdaConfigurationProperty
        {ungraceful = Prelude.pure newValue, ..}