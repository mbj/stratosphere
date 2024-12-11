module Stratosphere.Oam.Link (
        module Exports, Link(..), mkLink
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Oam.Link.LinkConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Link
  = Link {labelTemplate :: (Prelude.Maybe (Value Prelude.Text)),
          linkConfiguration :: (Prelude.Maybe LinkConfigurationProperty),
          resourceTypes :: (ValueList Prelude.Text),
          sinkIdentifier :: (Value Prelude.Text),
          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLink :: ValueList Prelude.Text -> Value Prelude.Text -> Link
mkLink resourceTypes sinkIdentifier
  = Link
      {resourceTypes = resourceTypes, sinkIdentifier = sinkIdentifier,
       labelTemplate = Prelude.Nothing,
       linkConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Link where
  toResourceProperties Link {..}
    = ResourceProperties
        {awsType = "AWS::Oam::Link", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceTypes" JSON..= resourceTypes,
                            "SinkIdentifier" JSON..= sinkIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "LabelTemplate" Prelude.<$> labelTemplate,
                               (JSON..=) "LinkConfiguration" Prelude.<$> linkConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Link where
  toJSON Link {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceTypes" JSON..= resourceTypes,
               "SinkIdentifier" JSON..= sinkIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "LabelTemplate" Prelude.<$> labelTemplate,
                  (JSON..=) "LinkConfiguration" Prelude.<$> linkConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "LabelTemplate" Link where
  type PropertyType "LabelTemplate" Link = Value Prelude.Text
  set newValue Link {..}
    = Link {labelTemplate = Prelude.pure newValue, ..}
instance Property "LinkConfiguration" Link where
  type PropertyType "LinkConfiguration" Link = LinkConfigurationProperty
  set newValue Link {..}
    = Link {linkConfiguration = Prelude.pure newValue, ..}
instance Property "ResourceTypes" Link where
  type PropertyType "ResourceTypes" Link = ValueList Prelude.Text
  set newValue Link {..} = Link {resourceTypes = newValue, ..}
instance Property "SinkIdentifier" Link where
  type PropertyType "SinkIdentifier" Link = Value Prelude.Text
  set newValue Link {..} = Link {sinkIdentifier = newValue, ..}
instance Property "Tags" Link where
  type PropertyType "Tags" Link = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Link {..} = Link {tags = Prelude.pure newValue, ..}