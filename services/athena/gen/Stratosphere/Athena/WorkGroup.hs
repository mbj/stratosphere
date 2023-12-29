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
  = WorkGroup {description :: (Prelude.Maybe (Value Prelude.Text)),
               name :: (Value Prelude.Text),
               recursiveDeleteOption :: (Prelude.Maybe (Value Prelude.Bool)),
               state :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe [Tag]),
               workGroupConfiguration :: (Prelude.Maybe WorkGroupConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkGroup :: Value Prelude.Text -> WorkGroup
mkWorkGroup name
  = WorkGroup
      {name = name, description = Prelude.Nothing,
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