module Stratosphere.MediaConnect.Bridge.FailoverConfigProperty (
        module Exports, FailoverConfigProperty(..),
        mkFailoverConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Bridge.SourcePriorityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FailoverConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-failoverconfig.html>
    FailoverConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-failoverconfig.html#cfn-mediaconnect-bridge-failoverconfig-failovermode>
                            failoverMode :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-failoverconfig.html#cfn-mediaconnect-bridge-failoverconfig-sourcepriority>
                            sourcePriority :: (Prelude.Maybe SourcePriorityProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-bridge-failoverconfig.html#cfn-mediaconnect-bridge-failoverconfig-state>
                            state :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFailoverConfigProperty ::
  Value Prelude.Text -> FailoverConfigProperty
mkFailoverConfigProperty failoverMode
  = FailoverConfigProperty
      {haddock_workaround_ = (), failoverMode = failoverMode,
       sourcePriority = Prelude.Nothing, state = Prelude.Nothing}
instance ToResourceProperties FailoverConfigProperty where
  toResourceProperties FailoverConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.FailoverConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FailoverMode" JSON..= failoverMode]
                           (Prelude.catMaybes
                              [(JSON..=) "SourcePriority" Prelude.<$> sourcePriority,
                               (JSON..=) "State" Prelude.<$> state]))}
instance JSON.ToJSON FailoverConfigProperty where
  toJSON FailoverConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FailoverMode" JSON..= failoverMode]
              (Prelude.catMaybes
                 [(JSON..=) "SourcePriority" Prelude.<$> sourcePriority,
                  (JSON..=) "State" Prelude.<$> state])))
instance Property "FailoverMode" FailoverConfigProperty where
  type PropertyType "FailoverMode" FailoverConfigProperty = Value Prelude.Text
  set newValue FailoverConfigProperty {..}
    = FailoverConfigProperty {failoverMode = newValue, ..}
instance Property "SourcePriority" FailoverConfigProperty where
  type PropertyType "SourcePriority" FailoverConfigProperty = SourcePriorityProperty
  set newValue FailoverConfigProperty {..}
    = FailoverConfigProperty
        {sourcePriority = Prelude.pure newValue, ..}
instance Property "State" FailoverConfigProperty where
  type PropertyType "State" FailoverConfigProperty = Value Prelude.Text
  set newValue FailoverConfigProperty {..}
    = FailoverConfigProperty {state = Prelude.pure newValue, ..}