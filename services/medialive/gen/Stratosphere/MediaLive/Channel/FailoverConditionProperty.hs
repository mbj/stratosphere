module Stratosphere.MediaLive.Channel.FailoverConditionProperty (
        module Exports, FailoverConditionProperty(..),
        mkFailoverConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FailoverConditionSettingsProperty as Exports
import Stratosphere.ResourceProperties
data FailoverConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-failovercondition.html>
    FailoverConditionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-failovercondition.html#cfn-medialive-channel-failovercondition-failoverconditionsettings>
                               failoverConditionSettings :: (Prelude.Maybe FailoverConditionSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFailoverConditionProperty :: FailoverConditionProperty
mkFailoverConditionProperty
  = FailoverConditionProperty
      {haddock_workaround_ = (),
       failoverConditionSettings = Prelude.Nothing}
instance ToResourceProperties FailoverConditionProperty where
  toResourceProperties FailoverConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FailoverCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FailoverConditionSettings"
                              Prelude.<$> failoverConditionSettings])}
instance JSON.ToJSON FailoverConditionProperty where
  toJSON FailoverConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FailoverConditionSettings"
                 Prelude.<$> failoverConditionSettings]))
instance Property "FailoverConditionSettings" FailoverConditionProperty where
  type PropertyType "FailoverConditionSettings" FailoverConditionProperty = FailoverConditionSettingsProperty
  set newValue FailoverConditionProperty {..}
    = FailoverConditionProperty
        {failoverConditionSettings = Prelude.pure newValue, ..}