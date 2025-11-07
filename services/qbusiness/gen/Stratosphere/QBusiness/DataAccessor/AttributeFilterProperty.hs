module Stratosphere.QBusiness.DataAccessor.AttributeFilterProperty (
        module Exports, AttributeFilterProperty(..),
        mkAttributeFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataAccessor.DocumentAttributeProperty as Exports
import Stratosphere.ResourceProperties
data AttributeFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html>
    AttributeFilterProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-andallfilters>
                             andAllFilters :: (Prelude.Maybe [AttributeFilterProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-containsall>
                             containsAll :: (Prelude.Maybe DocumentAttributeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-containsany>
                             containsAny :: (Prelude.Maybe DocumentAttributeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-equalsto>
                             equalsTo :: (Prelude.Maybe DocumentAttributeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-greaterthan>
                             greaterThan :: (Prelude.Maybe DocumentAttributeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-greaterthanorequals>
                             greaterThanOrEquals :: (Prelude.Maybe DocumentAttributeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-lessthan>
                             lessThan :: (Prelude.Maybe DocumentAttributeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-lessthanorequals>
                             lessThanOrEquals :: (Prelude.Maybe DocumentAttributeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-notfilter>
                             notFilter :: (Prelude.Maybe AttributeFilterProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-dataaccessor-attributefilter.html#cfn-qbusiness-dataaccessor-attributefilter-orallfilters>
                             orAllFilters :: (Prelude.Maybe [AttributeFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeFilterProperty :: AttributeFilterProperty
mkAttributeFilterProperty
  = AttributeFilterProperty
      {haddock_workaround_ = (), andAllFilters = Prelude.Nothing,
       containsAll = Prelude.Nothing, containsAny = Prelude.Nothing,
       equalsTo = Prelude.Nothing, greaterThan = Prelude.Nothing,
       greaterThanOrEquals = Prelude.Nothing, lessThan = Prelude.Nothing,
       lessThanOrEquals = Prelude.Nothing, notFilter = Prelude.Nothing,
       orAllFilters = Prelude.Nothing}
instance ToResourceProperties AttributeFilterProperty where
  toResourceProperties AttributeFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataAccessor.AttributeFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AndAllFilters" Prelude.<$> andAllFilters,
                            (JSON..=) "ContainsAll" Prelude.<$> containsAll,
                            (JSON..=) "ContainsAny" Prelude.<$> containsAny,
                            (JSON..=) "EqualsTo" Prelude.<$> equalsTo,
                            (JSON..=) "GreaterThan" Prelude.<$> greaterThan,
                            (JSON..=) "GreaterThanOrEquals" Prelude.<$> greaterThanOrEquals,
                            (JSON..=) "LessThan" Prelude.<$> lessThan,
                            (JSON..=) "LessThanOrEquals" Prelude.<$> lessThanOrEquals,
                            (JSON..=) "NotFilter" Prelude.<$> notFilter,
                            (JSON..=) "OrAllFilters" Prelude.<$> orAllFilters])}
instance JSON.ToJSON AttributeFilterProperty where
  toJSON AttributeFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AndAllFilters" Prelude.<$> andAllFilters,
               (JSON..=) "ContainsAll" Prelude.<$> containsAll,
               (JSON..=) "ContainsAny" Prelude.<$> containsAny,
               (JSON..=) "EqualsTo" Prelude.<$> equalsTo,
               (JSON..=) "GreaterThan" Prelude.<$> greaterThan,
               (JSON..=) "GreaterThanOrEquals" Prelude.<$> greaterThanOrEquals,
               (JSON..=) "LessThan" Prelude.<$> lessThan,
               (JSON..=) "LessThanOrEquals" Prelude.<$> lessThanOrEquals,
               (JSON..=) "NotFilter" Prelude.<$> notFilter,
               (JSON..=) "OrAllFilters" Prelude.<$> orAllFilters]))
instance Property "AndAllFilters" AttributeFilterProperty where
  type PropertyType "AndAllFilters" AttributeFilterProperty = [AttributeFilterProperty]
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty
        {andAllFilters = Prelude.pure newValue, ..}
instance Property "ContainsAll" AttributeFilterProperty where
  type PropertyType "ContainsAll" AttributeFilterProperty = DocumentAttributeProperty
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty {containsAll = Prelude.pure newValue, ..}
instance Property "ContainsAny" AttributeFilterProperty where
  type PropertyType "ContainsAny" AttributeFilterProperty = DocumentAttributeProperty
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty {containsAny = Prelude.pure newValue, ..}
instance Property "EqualsTo" AttributeFilterProperty where
  type PropertyType "EqualsTo" AttributeFilterProperty = DocumentAttributeProperty
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty {equalsTo = Prelude.pure newValue, ..}
instance Property "GreaterThan" AttributeFilterProperty where
  type PropertyType "GreaterThan" AttributeFilterProperty = DocumentAttributeProperty
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty {greaterThan = Prelude.pure newValue, ..}
instance Property "GreaterThanOrEquals" AttributeFilterProperty where
  type PropertyType "GreaterThanOrEquals" AttributeFilterProperty = DocumentAttributeProperty
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty
        {greaterThanOrEquals = Prelude.pure newValue, ..}
instance Property "LessThan" AttributeFilterProperty where
  type PropertyType "LessThan" AttributeFilterProperty = DocumentAttributeProperty
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty {lessThan = Prelude.pure newValue, ..}
instance Property "LessThanOrEquals" AttributeFilterProperty where
  type PropertyType "LessThanOrEquals" AttributeFilterProperty = DocumentAttributeProperty
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty
        {lessThanOrEquals = Prelude.pure newValue, ..}
instance Property "NotFilter" AttributeFilterProperty where
  type PropertyType "NotFilter" AttributeFilterProperty = AttributeFilterProperty
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty {notFilter = Prelude.pure newValue, ..}
instance Property "OrAllFilters" AttributeFilterProperty where
  type PropertyType "OrAllFilters" AttributeFilterProperty = [AttributeFilterProperty]
  set newValue AttributeFilterProperty {..}
    = AttributeFilterProperty
        {orAllFilters = Prelude.pure newValue, ..}