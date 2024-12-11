module Stratosphere.MediaLive.SdiSource (
        module Exports, SdiSource(..), mkSdiSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.SdiSource.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SdiSource
  = SdiSource {mode :: (Prelude.Maybe (Value Prelude.Text)),
               name :: (Value Prelude.Text),
               tags :: (Prelude.Maybe [TagsProperty]),
               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSdiSource ::
  Value Prelude.Text -> Value Prelude.Text -> SdiSource
mkSdiSource name type'
  = SdiSource
      {name = name, type' = type', mode = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SdiSource where
  toResourceProperties SdiSource {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::SdiSource",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Mode" Prelude.<$> mode,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SdiSource where
  toJSON SdiSource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Mode" Prelude.<$> mode,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Mode" SdiSource where
  type PropertyType "Mode" SdiSource = Value Prelude.Text
  set newValue SdiSource {..}
    = SdiSource {mode = Prelude.pure newValue, ..}
instance Property "Name" SdiSource where
  type PropertyType "Name" SdiSource = Value Prelude.Text
  set newValue SdiSource {..} = SdiSource {name = newValue, ..}
instance Property "Tags" SdiSource where
  type PropertyType "Tags" SdiSource = [TagsProperty]
  set newValue SdiSource {..}
    = SdiSource {tags = Prelude.pure newValue, ..}
instance Property "Type" SdiSource where
  type PropertyType "Type" SdiSource = Value Prelude.Text
  set newValue SdiSource {..} = SdiSource {type' = newValue, ..}