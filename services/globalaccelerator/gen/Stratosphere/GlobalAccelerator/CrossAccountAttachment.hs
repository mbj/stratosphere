module Stratosphere.GlobalAccelerator.CrossAccountAttachment (
        module Exports, CrossAccountAttachment(..),
        mkCrossAccountAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GlobalAccelerator.CrossAccountAttachment.ResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CrossAccountAttachment
  = CrossAccountAttachment {name :: (Value Prelude.Text),
                            principals :: (Prelude.Maybe (ValueList Prelude.Text)),
                            resources :: (Prelude.Maybe [ResourceProperty]),
                            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrossAccountAttachment ::
  Value Prelude.Text -> CrossAccountAttachment
mkCrossAccountAttachment name
  = CrossAccountAttachment
      {name = name, principals = Prelude.Nothing,
       resources = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CrossAccountAttachment where
  toResourceProperties CrossAccountAttachment {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::CrossAccountAttachment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Principals" Prelude.<$> principals,
                               (JSON..=) "Resources" Prelude.<$> resources,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CrossAccountAttachment where
  toJSON CrossAccountAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Principals" Prelude.<$> principals,
                  (JSON..=) "Resources" Prelude.<$> resources,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" CrossAccountAttachment where
  type PropertyType "Name" CrossAccountAttachment = Value Prelude.Text
  set newValue CrossAccountAttachment {..}
    = CrossAccountAttachment {name = newValue, ..}
instance Property "Principals" CrossAccountAttachment where
  type PropertyType "Principals" CrossAccountAttachment = ValueList Prelude.Text
  set newValue CrossAccountAttachment {..}
    = CrossAccountAttachment {principals = Prelude.pure newValue, ..}
instance Property "Resources" CrossAccountAttachment where
  type PropertyType "Resources" CrossAccountAttachment = [ResourceProperty]
  set newValue CrossAccountAttachment {..}
    = CrossAccountAttachment {resources = Prelude.pure newValue, ..}
instance Property "Tags" CrossAccountAttachment where
  type PropertyType "Tags" CrossAccountAttachment = [Tag]
  set newValue CrossAccountAttachment {..}
    = CrossAccountAttachment {tags = Prelude.pure newValue, ..}