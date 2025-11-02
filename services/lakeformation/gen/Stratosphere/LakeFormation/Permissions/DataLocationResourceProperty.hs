module Stratosphere.LakeFormation.Permissions.DataLocationResourceProperty (
        DataLocationResourceProperty(..), mkDataLocationResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLocationResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalocationresource.html>
    DataLocationResourceProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalocationresource.html#cfn-lakeformation-permissions-datalocationresource-catalogid>
                                  catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalocationresource.html#cfn-lakeformation-permissions-datalocationresource-s3resource>
                                  s3Resource :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataLocationResourceProperty :: DataLocationResourceProperty
mkDataLocationResourceProperty
  = DataLocationResourceProperty
      {haddock_workaround_ = (), catalogId = Prelude.Nothing,
       s3Resource = Prelude.Nothing}
instance ToResourceProperties DataLocationResourceProperty where
  toResourceProperties DataLocationResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions.DataLocationResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "S3Resource" Prelude.<$> s3Resource])}
instance JSON.ToJSON DataLocationResourceProperty where
  toJSON DataLocationResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "S3Resource" Prelude.<$> s3Resource]))
instance Property "CatalogId" DataLocationResourceProperty where
  type PropertyType "CatalogId" DataLocationResourceProperty = Value Prelude.Text
  set newValue DataLocationResourceProperty {..}
    = DataLocationResourceProperty
        {catalogId = Prelude.pure newValue, ..}
instance Property "S3Resource" DataLocationResourceProperty where
  type PropertyType "S3Resource" DataLocationResourceProperty = Value Prelude.Text
  set newValue DataLocationResourceProperty {..}
    = DataLocationResourceProperty
        {s3Resource = Prelude.pure newValue, ..}