module Stratosphere.Pinpoint.Campaign.InAppMessageContentProperty (
        module Exports, InAppMessageContentProperty(..),
        mkInAppMessageContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.InAppMessageBodyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.InAppMessageButtonProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.InAppMessageHeaderConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InAppMessageContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagecontent.html>
    InAppMessageContentProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagecontent.html#cfn-pinpoint-campaign-inappmessagecontent-backgroundcolor>
                                 backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagecontent.html#cfn-pinpoint-campaign-inappmessagecontent-bodyconfig>
                                 bodyConfig :: (Prelude.Maybe InAppMessageBodyConfigProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagecontent.html#cfn-pinpoint-campaign-inappmessagecontent-headerconfig>
                                 headerConfig :: (Prelude.Maybe InAppMessageHeaderConfigProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagecontent.html#cfn-pinpoint-campaign-inappmessagecontent-imageurl>
                                 imageUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagecontent.html#cfn-pinpoint-campaign-inappmessagecontent-primarybtn>
                                 primaryBtn :: (Prelude.Maybe InAppMessageButtonProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-inappmessagecontent.html#cfn-pinpoint-campaign-inappmessagecontent-secondarybtn>
                                 secondaryBtn :: (Prelude.Maybe InAppMessageButtonProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInAppMessageContentProperty :: InAppMessageContentProperty
mkInAppMessageContentProperty
  = InAppMessageContentProperty
      {haddock_workaround_ = (), backgroundColor = Prelude.Nothing,
       bodyConfig = Prelude.Nothing, headerConfig = Prelude.Nothing,
       imageUrl = Prelude.Nothing, primaryBtn = Prelude.Nothing,
       secondaryBtn = Prelude.Nothing}
instance ToResourceProperties InAppMessageContentProperty where
  toResourceProperties InAppMessageContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.InAppMessageContent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "BodyConfig" Prelude.<$> bodyConfig,
                            (JSON..=) "HeaderConfig" Prelude.<$> headerConfig,
                            (JSON..=) "ImageUrl" Prelude.<$> imageUrl,
                            (JSON..=) "PrimaryBtn" Prelude.<$> primaryBtn,
                            (JSON..=) "SecondaryBtn" Prelude.<$> secondaryBtn])}
instance JSON.ToJSON InAppMessageContentProperty where
  toJSON InAppMessageContentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "BodyConfig" Prelude.<$> bodyConfig,
               (JSON..=) "HeaderConfig" Prelude.<$> headerConfig,
               (JSON..=) "ImageUrl" Prelude.<$> imageUrl,
               (JSON..=) "PrimaryBtn" Prelude.<$> primaryBtn,
               (JSON..=) "SecondaryBtn" Prelude.<$> secondaryBtn]))
instance Property "BackgroundColor" InAppMessageContentProperty where
  type PropertyType "BackgroundColor" InAppMessageContentProperty = Value Prelude.Text
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "BodyConfig" InAppMessageContentProperty where
  type PropertyType "BodyConfig" InAppMessageContentProperty = InAppMessageBodyConfigProperty
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {bodyConfig = Prelude.pure newValue, ..}
instance Property "HeaderConfig" InAppMessageContentProperty where
  type PropertyType "HeaderConfig" InAppMessageContentProperty = InAppMessageHeaderConfigProperty
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {headerConfig = Prelude.pure newValue, ..}
instance Property "ImageUrl" InAppMessageContentProperty where
  type PropertyType "ImageUrl" InAppMessageContentProperty = Value Prelude.Text
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {imageUrl = Prelude.pure newValue, ..}
instance Property "PrimaryBtn" InAppMessageContentProperty where
  type PropertyType "PrimaryBtn" InAppMessageContentProperty = InAppMessageButtonProperty
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {primaryBtn = Prelude.pure newValue, ..}
instance Property "SecondaryBtn" InAppMessageContentProperty where
  type PropertyType "SecondaryBtn" InAppMessageContentProperty = InAppMessageButtonProperty
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {secondaryBtn = Prelude.pure newValue, ..}