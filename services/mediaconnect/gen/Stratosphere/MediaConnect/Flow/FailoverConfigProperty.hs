module Stratosphere.MediaConnect.Flow.FailoverConfigProperty (
        module Exports, FailoverConfigProperty(..),
        mkFailoverConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.SourcePriorityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FailoverConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-failoverconfig.html>
    FailoverConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-failoverconfig.html#cfn-mediaconnect-flow-failoverconfig-failovermode>
                            failoverMode :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-failoverconfig.html#cfn-mediaconnect-flow-failoverconfig-recoverywindow>
                            recoveryWindow :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-failoverconfig.html#cfn-mediaconnect-flow-failoverconfig-sourcepriority>
                            sourcePriority :: (Prelude.Maybe SourcePriorityProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-failoverconfig.html#cfn-mediaconnect-flow-failoverconfig-state>
                            state :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFailoverConfigProperty :: FailoverConfigProperty
mkFailoverConfigProperty
  = FailoverConfigProperty
      {haddock_workaround_ = (), failoverMode = Prelude.Nothing,
       recoveryWindow = Prelude.Nothing, sourcePriority = Prelude.Nothing,
       state = Prelude.Nothing}
instance ToResourceProperties FailoverConfigProperty where
  toResourceProperties FailoverConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.FailoverConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FailoverMode" Prelude.<$> failoverMode,
                            (JSON..=) "RecoveryWindow" Prelude.<$> recoveryWindow,
                            (JSON..=) "SourcePriority" Prelude.<$> sourcePriority,
                            (JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON FailoverConfigProperty where
  toJSON FailoverConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FailoverMode" Prelude.<$> failoverMode,
               (JSON..=) "RecoveryWindow" Prelude.<$> recoveryWindow,
               (JSON..=) "SourcePriority" Prelude.<$> sourcePriority,
               (JSON..=) "State" Prelude.<$> state]))
instance Property "FailoverMode" FailoverConfigProperty where
  type PropertyType "FailoverMode" FailoverConfigProperty = Value Prelude.Text
  set newValue FailoverConfigProperty {..}
    = FailoverConfigProperty {failoverMode = Prelude.pure newValue, ..}
instance Property "RecoveryWindow" FailoverConfigProperty where
  type PropertyType "RecoveryWindow" FailoverConfigProperty = Value Prelude.Integer
  set newValue FailoverConfigProperty {..}
    = FailoverConfigProperty
        {recoveryWindow = Prelude.pure newValue, ..}
instance Property "SourcePriority" FailoverConfigProperty where
  type PropertyType "SourcePriority" FailoverConfigProperty = SourcePriorityProperty
  set newValue FailoverConfigProperty {..}
    = FailoverConfigProperty
        {sourcePriority = Prelude.pure newValue, ..}
instance Property "State" FailoverConfigProperty where
  type PropertyType "State" FailoverConfigProperty = Value Prelude.Text
  set newValue FailoverConfigProperty {..}
    = FailoverConfigProperty {state = Prelude.pure newValue, ..}