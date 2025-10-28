module Stratosphere.Pinpoint.InAppTemplate.InAppMessageContentProperty (
        module Exports, InAppMessageContentProperty(..),
        mkInAppMessageContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.InAppTemplate.BodyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.InAppTemplate.ButtonConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.InAppTemplate.HeaderConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InAppMessageContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html>
    InAppMessageContentProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-backgroundcolor>
                                 backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-bodyconfig>
                                 bodyConfig :: (Prelude.Maybe BodyConfigProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-headerconfig>
                                 headerConfig :: (Prelude.Maybe HeaderConfigProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-imageurl>
                                 imageUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-primarybtn>
                                 primaryBtn :: (Prelude.Maybe ButtonConfigProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-inappmessagecontent.html#cfn-pinpoint-inapptemplate-inappmessagecontent-secondarybtn>
                                 secondaryBtn :: (Prelude.Maybe ButtonConfigProperty)}
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
        {awsType = "AWS::Pinpoint::InAppTemplate.InAppMessageContent",
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
  type PropertyType "BodyConfig" InAppMessageContentProperty = BodyConfigProperty
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {bodyConfig = Prelude.pure newValue, ..}
instance Property "HeaderConfig" InAppMessageContentProperty where
  type PropertyType "HeaderConfig" InAppMessageContentProperty = HeaderConfigProperty
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {headerConfig = Prelude.pure newValue, ..}
instance Property "ImageUrl" InAppMessageContentProperty where
  type PropertyType "ImageUrl" InAppMessageContentProperty = Value Prelude.Text
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {imageUrl = Prelude.pure newValue, ..}
instance Property "PrimaryBtn" InAppMessageContentProperty where
  type PropertyType "PrimaryBtn" InAppMessageContentProperty = ButtonConfigProperty
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {primaryBtn = Prelude.pure newValue, ..}
instance Property "SecondaryBtn" InAppMessageContentProperty where
  type PropertyType "SecondaryBtn" InAppMessageContentProperty = ButtonConfigProperty
  set newValue InAppMessageContentProperty {..}
    = InAppMessageContentProperty
        {secondaryBtn = Prelude.pure newValue, ..}