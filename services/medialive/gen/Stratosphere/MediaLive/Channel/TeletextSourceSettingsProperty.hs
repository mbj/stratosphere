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
  = TeletextSourceSettingsProperty {outputRectangle :: (Prelude.Maybe CaptionRectangleProperty),
                                    pageNumber :: (Prelude.Maybe (Value Prelude.Text))}
mkTeletextSourceSettingsProperty :: TeletextSourceSettingsProperty
mkTeletextSourceSettingsProperty
  = TeletextSourceSettingsProperty
      {outputRectangle = Prelude.Nothing, pageNumber = Prelude.Nothing}
instance ToResourceProperties TeletextSourceSettingsProperty where
  toResourceProperties TeletextSourceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TeletextSourceSettings",
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