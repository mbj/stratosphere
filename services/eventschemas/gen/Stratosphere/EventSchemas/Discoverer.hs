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
  = Discoverer {crossAccount :: (Prelude.Maybe (Value Prelude.Bool)),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                sourceArn :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [TagsEntryProperty])}
mkDiscoverer :: Value Prelude.Text -> Discoverer
mkDiscoverer sourceArn
  = Discoverer
      {sourceArn = sourceArn, crossAccount = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Discoverer where
  toResourceProperties Discoverer {..}
    = ResourceProperties
        {awsType = "AWS::EventSchemas::Discoverer",
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