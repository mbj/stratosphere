module Stratosphere.SageMaker.Space (
        module Exports, Space(..), mkSpace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.SpaceSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Space
  = Space {domainId :: (Value Prelude.Text),
           spaceName :: (Value Prelude.Text),
           spaceSettings :: (Prelude.Maybe SpaceSettingsProperty),
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpace :: Value Prelude.Text -> Value Prelude.Text -> Space
mkSpace domainId spaceName
  = Space
      {domainId = domainId, spaceName = spaceName,
       spaceSettings = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Space where
  toResourceProperties Space {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainId" JSON..= domainId, "SpaceName" JSON..= spaceName]
                           (Prelude.catMaybes
                              [(JSON..=) "SpaceSettings" Prelude.<$> spaceSettings,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Space where
  toJSON Space {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainId" JSON..= domainId, "SpaceName" JSON..= spaceName]
              (Prelude.catMaybes
                 [(JSON..=) "SpaceSettings" Prelude.<$> spaceSettings,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DomainId" Space where
  type PropertyType "DomainId" Space = Value Prelude.Text
  set newValue Space {..} = Space {domainId = newValue, ..}
instance Property "SpaceName" Space where
  type PropertyType "SpaceName" Space = Value Prelude.Text
  set newValue Space {..} = Space {spaceName = newValue, ..}
instance Property "SpaceSettings" Space where
  type PropertyType "SpaceSettings" Space = SpaceSettingsProperty
  set newValue Space {..}
    = Space {spaceSettings = Prelude.pure newValue, ..}
instance Property "Tags" Space where
  type PropertyType "Tags" Space = [Tag]
  set newValue Space {..} = Space {tags = Prelude.pure newValue, ..}