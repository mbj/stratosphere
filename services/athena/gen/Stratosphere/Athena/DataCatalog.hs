module Stratosphere.Athena.DataCatalog (
        DataCatalog(..), mkDataCatalog
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataCatalog
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html>
    DataCatalog {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-connectiontype>
                 connectionType :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-error>
                 error :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-parameters>
                 parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-status>
                 status :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-type>
                 type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCatalog ::
  Value Prelude.Text -> Value Prelude.Text -> DataCatalog
mkDataCatalog name type'
  = DataCatalog
      {haddock_workaround_ = (), name = name, type' = type',
       connectionType = Prelude.Nothing, description = Prelude.Nothing,
       error = Prelude.Nothing, parameters = Prelude.Nothing,
       status = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DataCatalog where
  toResourceProperties DataCatalog {..}
    = ResourceProperties
        {awsType = "AWS::Athena::DataCatalog", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionType" Prelude.<$> connectionType,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Error" Prelude.<$> error,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataCatalog where
  toJSON DataCatalog {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionType" Prelude.<$> connectionType,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Error" Prelude.<$> error,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectionType" DataCatalog where
  type PropertyType "ConnectionType" DataCatalog = Value Prelude.Text
  set newValue DataCatalog {..}
    = DataCatalog {connectionType = Prelude.pure newValue, ..}
instance Property "Description" DataCatalog where
  type PropertyType "Description" DataCatalog = Value Prelude.Text
  set newValue DataCatalog {..}
    = DataCatalog {description = Prelude.pure newValue, ..}
instance Property "Error" DataCatalog where
  type PropertyType "Error" DataCatalog = Value Prelude.Text
  set newValue DataCatalog {..}
    = DataCatalog {error = Prelude.pure newValue, ..}
instance Property "Name" DataCatalog where
  type PropertyType "Name" DataCatalog = Value Prelude.Text
  set newValue DataCatalog {..} = DataCatalog {name = newValue, ..}
instance Property "Parameters" DataCatalog where
  type PropertyType "Parameters" DataCatalog = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DataCatalog {..}
    = DataCatalog {parameters = Prelude.pure newValue, ..}
instance Property "Status" DataCatalog where
  type PropertyType "Status" DataCatalog = Value Prelude.Text
  set newValue DataCatalog {..}
    = DataCatalog {status = Prelude.pure newValue, ..}
instance Property "Tags" DataCatalog where
  type PropertyType "Tags" DataCatalog = [Tag]
  set newValue DataCatalog {..}
    = DataCatalog {tags = Prelude.pure newValue, ..}
instance Property "Type" DataCatalog where
  type PropertyType "Type" DataCatalog = Value Prelude.Text
  set newValue DataCatalog {..} = DataCatalog {type' = newValue, ..}