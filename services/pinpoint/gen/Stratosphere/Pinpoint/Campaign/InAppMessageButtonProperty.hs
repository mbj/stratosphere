module Stratosphere.Pinpoint.Campaign.InAppMessageButtonProperty (
        module Exports, InAppMessageButtonProperty(..),
        mkInAppMessageButtonProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.DefaultButtonConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.OverrideButtonConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data InAppMessageButtonProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html>
    InAppMessageButtonProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-android>
                                android :: (Prelude.Maybe OverrideButtonConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-defaultconfig>
                                defaultConfig :: (Prelude.Maybe DefaultButtonConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-ios>
                                iOS :: (Prelude.Maybe OverrideButtonConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagebutton.html#cfn-pinpoint-campaign-inappmessagebutton-web>
                                web :: (Prelude.Maybe OverrideButtonConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInAppMessageButtonProperty :: InAppMessageButtonProperty
mkInAppMessageButtonProperty
  = InAppMessageButtonProperty
      {haddock_workaround_ = (), android = Prelude.Nothing,
       defaultConfig = Prelude.Nothing, iOS = Prelude.Nothing,
       web = Prelude.Nothing}
instance ToResourceProperties InAppMessageButtonProperty where
  toResourceProperties InAppMessageButtonProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.InAppMessageButton",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Android" Prelude.<$> android,
                            (JSON..=) "DefaultConfig" Prelude.<$> defaultConfig,
                            (JSON..=) "IOS" Prelude.<$> iOS, (JSON..=) "Web" Prelude.<$> web])}
instance JSON.ToJSON InAppMessageButtonProperty where
  toJSON InAppMessageButtonProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Android" Prelude.<$> android,
               (JSON..=) "DefaultConfig" Prelude.<$> defaultConfig,
               (JSON..=) "IOS" Prelude.<$> iOS, (JSON..=) "Web" Prelude.<$> web]))
instance Property "Android" InAppMessageButtonProperty where
  type PropertyType "Android" InAppMessageButtonProperty = OverrideButtonConfigurationProperty
  set newValue InAppMessageButtonProperty {..}
    = InAppMessageButtonProperty {android = Prelude.pure newValue, ..}
instance Property "DefaultConfig" InAppMessageButtonProperty where
  type PropertyType "DefaultConfig" InAppMessageButtonProperty = DefaultButtonConfigurationProperty
  set newValue InAppMessageButtonProperty {..}
    = InAppMessageButtonProperty
        {defaultConfig = Prelude.pure newValue, ..}
instance Property "IOS" InAppMessageButtonProperty where
  type PropertyType "IOS" InAppMessageButtonProperty = OverrideButtonConfigurationProperty
  set newValue InAppMessageButtonProperty {..}
    = InAppMessageButtonProperty {iOS = Prelude.pure newValue, ..}
instance Property "Web" InAppMessageButtonProperty where
  type PropertyType "Web" InAppMessageButtonProperty = OverrideButtonConfigurationProperty
  set newValue InAppMessageButtonProperty {..}
    = InAppMessageButtonProperty {web = Prelude.pure newValue, ..}