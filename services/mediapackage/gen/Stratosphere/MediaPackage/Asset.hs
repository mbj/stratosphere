module Stratosphere.MediaPackage.Asset (
        Asset(..), mkAsset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Asset
  = Asset {id :: (Value Prelude.Text),
           packagingGroupId :: (Value Prelude.Text),
           resourceId :: (Prelude.Maybe (Value Prelude.Text)),
           sourceArn :: (Value Prelude.Text),
           sourceRoleArn :: (Value Prelude.Text),
           tags :: (Prelude.Maybe [Tag])}
mkAsset ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Asset
mkAsset id packagingGroupId sourceArn sourceRoleArn
  = Asset
      {id = id, packagingGroupId = packagingGroupId,
       sourceArn = sourceArn, sourceRoleArn = sourceRoleArn,
       resourceId = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Asset where
  toResourceProperties Asset {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::Asset", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "PackagingGroupId" JSON..= packagingGroupId,
                            "SourceArn" JSON..= sourceArn,
                            "SourceRoleArn" JSON..= sourceRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceId" Prelude.<$> resourceId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Asset where
  toJSON Asset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "PackagingGroupId" JSON..= packagingGroupId,
               "SourceArn" JSON..= sourceArn,
               "SourceRoleArn" JSON..= sourceRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceId" Prelude.<$> resourceId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Id" Asset where
  type PropertyType "Id" Asset = Value Prelude.Text
  set newValue Asset {..} = Asset {id = newValue, ..}
instance Property "PackagingGroupId" Asset where
  type PropertyType "PackagingGroupId" Asset = Value Prelude.Text
  set newValue Asset {..} = Asset {packagingGroupId = newValue, ..}
instance Property "ResourceId" Asset where
  type PropertyType "ResourceId" Asset = Value Prelude.Text
  set newValue Asset {..}
    = Asset {resourceId = Prelude.pure newValue, ..}
instance Property "SourceArn" Asset where
  type PropertyType "SourceArn" Asset = Value Prelude.Text
  set newValue Asset {..} = Asset {sourceArn = newValue, ..}
instance Property "SourceRoleArn" Asset where
  type PropertyType "SourceRoleArn" Asset = Value Prelude.Text
  set newValue Asset {..} = Asset {sourceRoleArn = newValue, ..}
instance Property "Tags" Asset where
  type PropertyType "Tags" Asset = [Tag]
  set newValue Asset {..} = Asset {tags = Prelude.pure newValue, ..}