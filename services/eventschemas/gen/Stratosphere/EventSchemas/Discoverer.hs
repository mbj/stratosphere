module Stratosphere.EventSchemas.Discoverer (
        module Exports, Discoverer(..), mkDiscoverer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EventSchemas.Discoverer.TagsEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Discoverer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-discoverer.html>
    Discoverer {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-discoverer.html#cfn-eventschemas-discoverer-crossaccount>
                crossAccount :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-discoverer.html#cfn-eventschemas-discoverer-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-discoverer.html#cfn-eventschemas-discoverer-sourcearn>
                sourceArn :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-discoverer.html#cfn-eventschemas-discoverer-tags>
                tags :: (Prelude.Maybe [TagsEntryProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDiscoverer :: Value Prelude.Text -> Discoverer
mkDiscoverer sourceArn
  = Discoverer
      {haddock_workaround_ = (), sourceArn = sourceArn,
       crossAccount = Prelude.Nothing, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Discoverer where
  toResourceProperties Discoverer {..}
    = ResourceProperties
        {awsType = "AWS::EventSchemas::Discoverer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceArn" JSON..= sourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CrossAccount" Prelude.<$> crossAccount,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Discoverer where
  toJSON Discoverer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceArn" JSON..= sourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "CrossAccount" Prelude.<$> crossAccount,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CrossAccount" Discoverer where
  type PropertyType "CrossAccount" Discoverer = Value Prelude.Bool
  set newValue Discoverer {..}
    = Discoverer {crossAccount = Prelude.pure newValue, ..}
instance Property "Description" Discoverer where
  type PropertyType "Description" Discoverer = Value Prelude.Text
  set newValue Discoverer {..}
    = Discoverer {description = Prelude.pure newValue, ..}
instance Property "SourceArn" Discoverer where
  type PropertyType "SourceArn" Discoverer = Value Prelude.Text
  set newValue Discoverer {..}
    = Discoverer {sourceArn = newValue, ..}
instance Property "Tags" Discoverer where
  type PropertyType "Tags" Discoverer = [TagsEntryProperty]
  set newValue Discoverer {..}
    = Discoverer {tags = Prelude.pure newValue, ..}