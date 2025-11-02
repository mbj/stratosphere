module Stratosphere.Athena.WorkGroup (
        module Exports, WorkGroup(..), mkWorkGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.WorkGroupConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WorkGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html>
    WorkGroup {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-name>
               name :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-recursivedeleteoption>
               recursiveDeleteOption :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-state>
               state :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-workgroup.html#cfn-athena-workgroup-workgroupconfiguration>
               workGroupConfiguration :: (Prelude.Maybe WorkGroupConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkGroup :: Value Prelude.Text -> WorkGroup
mkWorkGroup name
  = WorkGroup
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing,
       recursiveDeleteOption = Prelude.Nothing, state = Prelude.Nothing,
       tags = Prelude.Nothing, workGroupConfiguration = Prelude.Nothing}
instance ToResourceProperties WorkGroup where
  toResourceProperties WorkGroup {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "RecursiveDeleteOption"
                                 Prelude.<$> recursiveDeleteOption,
                               (JSON..=) "State" Prelude.<$> state,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WorkGroupConfiguration"
                                 Prelude.<$> workGroupConfiguration]))}
instance JSON.ToJSON WorkGroup where
  toJSON WorkGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "RecursiveDeleteOption"
                    Prelude.<$> recursiveDeleteOption,
                  (JSON..=) "State" Prelude.<$> state,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WorkGroupConfiguration"
                    Prelude.<$> workGroupConfiguration])))
instance Property "Description" WorkGroup where
  type PropertyType "Description" WorkGroup = Value Prelude.Text
  set newValue WorkGroup {..}
    = WorkGroup {description = Prelude.pure newValue, ..}
instance Property "Name" WorkGroup where
  type PropertyType "Name" WorkGroup = Value Prelude.Text
  set newValue WorkGroup {..} = WorkGroup {name = newValue, ..}
instance Property "RecursiveDeleteOption" WorkGroup where
  type PropertyType "RecursiveDeleteOption" WorkGroup = Value Prelude.Bool
  set newValue WorkGroup {..}
    = WorkGroup {recursiveDeleteOption = Prelude.pure newValue, ..}
instance Property "State" WorkGroup where
  type PropertyType "State" WorkGroup = Value Prelude.Text
  set newValue WorkGroup {..}
    = WorkGroup {state = Prelude.pure newValue, ..}
instance Property "Tags" WorkGroup where
  type PropertyType "Tags" WorkGroup = [Tag]
  set newValue WorkGroup {..}
    = WorkGroup {tags = Prelude.pure newValue, ..}
instance Property "WorkGroupConfiguration" WorkGroup where
  type PropertyType "WorkGroupConfiguration" WorkGroup = WorkGroupConfigurationProperty
  set newValue WorkGroup {..}
    = WorkGroup {workGroupConfiguration = Prelude.pure newValue, ..}