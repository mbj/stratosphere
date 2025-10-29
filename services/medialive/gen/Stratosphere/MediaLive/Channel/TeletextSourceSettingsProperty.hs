module Stratosphere.MediaLive.Channel.TeletextSourceSettingsProperty (
        module Exports, TeletextSourceSettingsProperty(..),
        mkTeletextSourceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CaptionRectangleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TeletextSourceSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html>
    TeletextSourceSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html#cfn-medialive-channel-teletextsourcesettings-outputrectangle>
                                    outputRectangle :: (Prelude.Maybe CaptionRectangleProperty),
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html#cfn-medialive-channel-teletextsourcesettings-pagenumber>
                                    pageNumber :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTeletextSourceSettingsProperty :: TeletextSourceSettingsProperty
mkTeletextSourceSettingsProperty
  = TeletextSourceSettingsProperty
      {outputRectangle = Prelude.Nothing, pageNumber = Prelude.Nothing}
instance ToResourceProperties TeletextSourceSettingsProperty where
  toResourceProperties TeletextSourceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TeletextSourceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OutputRectangle" Prelude.<$> outputRectangle,
                            (JSON..=) "PageNumber" Prelude.<$> pageNumber])}
instance JSON.ToJSON TeletextSourceSettingsProperty where
  toJSON TeletextSourceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OutputRectangle" Prelude.<$> outputRectangle,
               (JSON..=) "PageNumber" Prelude.<$> pageNumber]))
instance Property "OutputRectangle" TeletextSourceSettingsProperty where
  type PropertyType "OutputRectangle" TeletextSourceSettingsProperty = CaptionRectangleProperty
  set newValue TeletextSourceSettingsProperty {..}
    = TeletextSourceSettingsProperty
        {outputRectangle = Prelude.pure newValue, ..}
instance Property "PageNumber" TeletextSourceSettingsProperty where
  type PropertyType "PageNumber" TeletextSourceSettingsProperty = Value Prelude.Text
  set newValue TeletextSourceSettingsProperty {..}
    = TeletextSourceSettingsProperty
        {pageNumber = Prelude.pure newValue, ..}