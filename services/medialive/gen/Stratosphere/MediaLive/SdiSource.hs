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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-sdisource.html>
    SdiSource {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-sdisource.html#cfn-medialive-sdisource-mode>
               mode :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-sdisource.html#cfn-medialive-sdisource-name>
               name :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-sdisource.html#cfn-medialive-sdisource-tags>
               tags :: (Prelude.Maybe [TagsProperty]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-sdisource.html#cfn-medialive-sdisource-type>
               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSdiSource ::
  Value Prelude.Text -> Value Prelude.Text -> SdiSource
mkSdiSource name type'
  = SdiSource
      {haddock_workaround_ = (), name = name, type' = type',
       mode = Prelude.Nothing, tags = Prelude.Nothing}
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