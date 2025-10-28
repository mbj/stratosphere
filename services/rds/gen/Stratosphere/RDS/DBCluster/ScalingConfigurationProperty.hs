module Stratosphere.RDS.DBCluster.ScalingConfigurationProperty (
        ScalingConfigurationProperty(..), mkScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html>
    ScalingConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-autopause>
                                  autoPause :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-maxcapacity>
                                  maxCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-mincapacity>
                                  minCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-secondsbeforetimeout>
                                  secondsBeforeTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-secondsuntilautopause>
                                  secondsUntilAutoPause :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-timeoutaction>
                                  timeoutAction :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingConfigurationProperty :: ScalingConfigurationProperty
mkScalingConfigurationProperty
  = ScalingConfigurationProperty
      {haddock_workaround_ = (), autoPause = Prelude.Nothing,
       maxCapacity = Prelude.Nothing, minCapacity = Prelude.Nothing,
       secondsBeforeTimeout = Prelude.Nothing,
       secondsUntilAutoPause = Prelude.Nothing,
       timeoutAction = Prelude.Nothing}
instance ToResourceProperties ScalingConfigurationProperty where
  toResourceProperties ScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBCluster.ScalingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoPause" Prelude.<$> autoPause,
                            (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                            (JSON..=) "MinCapacity" Prelude.<$> minCapacity,
                            (JSON..=) "SecondsBeforeTimeout" Prelude.<$> secondsBeforeTimeout,
                            (JSON..=) "SecondsUntilAutoPause"
                              Prelude.<$> secondsUntilAutoPause,
                            (JSON..=) "TimeoutAction" Prelude.<$> timeoutAction])}
instance JSON.ToJSON ScalingConfigurationProperty where
  toJSON ScalingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoPause" Prelude.<$> autoPause,
               (JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
               (JSON..=) "MinCapacity" Prelude.<$> minCapacity,
               (JSON..=) "SecondsBeforeTimeout" Prelude.<$> secondsBeforeTimeout,
               (JSON..=) "SecondsUntilAutoPause"
                 Prelude.<$> secondsUntilAutoPause,
               (JSON..=) "TimeoutAction" Prelude.<$> timeoutAction]))
instance Property "AutoPause" ScalingConfigurationProperty where
  type PropertyType "AutoPause" ScalingConfigurationProperty = Value Prelude.Bool
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {autoPause = Prelude.pure newValue, ..}
instance Property "MaxCapacity" ScalingConfigurationProperty where
  type PropertyType "MaxCapacity" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {maxCapacity = Prelude.pure newValue, ..}
instance Property "MinCapacity" ScalingConfigurationProperty where
  type PropertyType "MinCapacity" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {minCapacity = Prelude.pure newValue, ..}
instance Property "SecondsBeforeTimeout" ScalingConfigurationProperty where
  type PropertyType "SecondsBeforeTimeout" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {secondsBeforeTimeout = Prelude.pure newValue, ..}
instance Property "SecondsUntilAutoPause" ScalingConfigurationProperty where
  type PropertyType "SecondsUntilAutoPause" ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {secondsUntilAutoPause = Prelude.pure newValue, ..}
instance Property "TimeoutAction" ScalingConfigurationProperty where
  type PropertyType "TimeoutAction" ScalingConfigurationProperty = Value Prelude.Text
  set newValue ScalingConfigurationProperty {..}
    = ScalingConfigurationProperty
        {timeoutAction = Prelude.pure newValue, ..}