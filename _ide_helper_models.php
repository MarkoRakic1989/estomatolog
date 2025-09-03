<?php

// @formatter:off
// phpcs:ignoreFile
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property int $employee_id
 * @property int $user_id
 * @property string $date
 * @property string $start_time
 * @property string $end_time
 * @property string $status
 * @property string|null $note
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Employee $employee
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Report> $reports
 * @property-read int|null $reports_count
 * @property-read \App\Models\Salon $salon
 * @property-read \App\Models\Service|null $service
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Service> $services
 * @property-read int|null $services_count
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereEmployeeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereEndTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereStartTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Appointment whereUserId($value)
 */
	class Appointment extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property string $name
 * @property string $category
 * @property string|null $serial_number
 * @property string|null $purchase_date
 * @property string|null $value
 * @property string $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\MaintenanceLog> $maintenances
 * @property-read int|null $maintenances_count
 * @property-read \App\Models\Salon $salon
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Warranty> $warranties
 * @property-read int|null $warranties_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset whereCategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset wherePurchaseDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset whereSerialNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Asset whereValue($value)
 */
	class Asset extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $name
 * @property string|null $icon
 * @property string $default_color
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $slug Npr. beauty, hair, trainer...
 * @property string|null $icon_192 Putanja do ikone 192×192 u storage (opcionalno)
 * @property string|null $icon_512 Putanja do ikone 512×512 u storage (opcionalno)
 * @property string|null $theme_color Hex boja teme za ovu kategoriju (npr. #FFC0CB)
 * @property string|null $background_color Hex boja pozadine za ovu kategoriju
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Salon> $salons
 * @property-read int|null $salons_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereBackgroundColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereDefaultColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereIcon192($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereIcon512($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereThemeColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Category whereUpdatedAt($value)
 */
	class Category extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $code
 * @property string $type
 * @property int $value
 * @property int|null $usage_limit
 * @property int $used_count
 * @property string|null $valid_from
 * @property string|null $valid_until
 * @property int $active
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereUsageLimit($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereUsedCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereValidFrom($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereValidUntil($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Coupon whereValue($value)
 */
	class Coupon extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $recipient
 * @property string $subject
 * @property string $body
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|EmailLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|EmailLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|EmailLog query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|EmailLog whereBody($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|EmailLog whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|EmailLog whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|EmailLog whereRecipient($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|EmailLog whereSubject($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|EmailLog whereUpdatedAt($value)
 */
	class EmailLog extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property int|null $user_id
 * @property string $name
 * @property string $email
 * @property string|null $phone
 * @property string|null $photo
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Appointment> $appointments
 * @property-read int|null $appointments_count
 * @property-read \App\Models\Salon $salon
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Service> $services
 * @property-read int|null $services_count
 * @property-read \App\Models\User|null $user
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\WorkTime> $workTimes
 * @property-read int|null $work_times_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee wherePhoto($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Employee whereUserId($value)
 */
	class Employee extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property int|null $supplier_id
 * @property string $category
 * @property string $date
 * @property string $amount
 * @property string|null $description
 * @property string|null $invoice_number
 * @property string|null $file_path
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Salon $salon
 * @property-read \App\Models\Supplier|null $supplier
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereCategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereFilePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereInvoiceNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereSupplierId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Expense whereUpdatedAt($value)
 */
	class Expense extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\GalleryImage> $images
 * @property-read int|null $images_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Gallery newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Gallery newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Gallery query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Gallery whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Gallery whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Gallery whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Gallery whereUpdatedAt($value)
 */
	class Gallery extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $gallery_id
 * @property string $path
 * @property string|null $alt_text
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Gallery $gallery
 * @method static \Illuminate\Database\Eloquent\Builder<static>|GalleryImage newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|GalleryImage newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|GalleryImage query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|GalleryImage whereAltText($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|GalleryImage whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|GalleryImage whereGalleryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|GalleryImage whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|GalleryImage wherePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|GalleryImage whereUpdatedAt($value)
 */
	class GalleryImage extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property int|null $supplier_id
 * @property string $invoice_number
 * @property string $date
 * @property string $total
 * @property string|null $file_path
 * @property string|null $fiscal_id
 * @property string|null $fiscal_data
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\InvoiceItem> $items
 * @property-read int|null $items_count
 * @property-read \App\Models\Salon $salon
 * @property-read \App\Models\Supplier|null $supplier
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereFilePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereFiscalData($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereFiscalId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereInvoiceNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereSupplierId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Invoice whereUpdatedAt($value)
 */
	class Invoice extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $invoice_id
 * @property int|null $service_id
 * @property int|null $stock_item_id
 * @property int $quantity
 * @property string $unit_price
 * @property string $total
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Invoice $invoice
 * @property-read \App\Models\Service|null $service
 * @property-read \App\Models\StockItem|null $stockItem
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem whereInvoiceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem whereServiceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem whereStockItemId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem whereUnitPrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|InvoiceItem whereUpdatedAt($value)
 */
	class InvoiceItem extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $asset_id
 * @property string $date
 * @property string $action
 * @property string|null $notes
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Asset $asset
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog whereAction($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog whereAssetId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog whereNotes($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|MaintenanceLog whereUpdatedAt($value)
 */
	class MaintenanceLog extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Message newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Message newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Message query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Message whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Message whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Message whereUpdatedAt($value)
 */
	class Message extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $name
 * @property string $price
 * @property int $duration_months
 * @property string|null $description
 * @property int $is_active
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Subscription> $subscriptions
 * @property-read int|null $subscriptions_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package whereDurationMonths($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package whereIsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Package whereUpdatedAt($value)
 */
	class Package extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $slug
 * @property string $title
 * @property string $content
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $salon_id
 * @property-read \App\Models\Salon $salon
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Page whereUpdatedAt($value)
 */
	class Page extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $user_id
 * @property int $salon_id
 * @property string $file_path
 * @property string|null $file_type
 * @property string|null $tooth_number
 * @property int|null $appointment_id
 * @property string|null $note
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Appointment|null $appointment
 * @property-read \App\Models\Salon $salon
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereAppointmentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereFilePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereFileType($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereToothNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|PatientFile whereUserId($value)
 */
	class PatientFile extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $appointment_id
 * @property string $content
 * @property string $type
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Appointment $appointment
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Report newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Report newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Report query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Report whereAppointmentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Report whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Report whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Report whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Report whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Report whereUpdatedAt($value)
 */
	class Report extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $user_id
 * @property int $category_id
 * @property string $slug
 * @property string $theme
 * @property string $name
 * @property string|null $email
 * @property string|null $phone
 * @property string|null $logo
 * @property string $primary_color
 * @property string $secondary_color
 * @property string|null $description
 * @property int $is_active
 * @property string|null $paid_until
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $dark_mode
 * @property string|null $cover_image
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Appointment> $appointments
 * @property-read int|null $appointments_count
 * @property-read \App\Models\Category $category
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Employee> $employees
 * @property-read int|null $employees_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Expense> $expenses
 * @property-read int|null $expenses_count
 * @property-read \App\Models\User $owner
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\PatientFile> $patientFiles
 * @property-read int|null $patient_files_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ServiceCategory> $serviceCategories
 * @property-read int|null $service_categories_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Service> $services
 * @property-read int|null $services_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Subscription> $subscriptions
 * @property-read int|null $subscriptions_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\User> $users
 * @property-read int|null $users_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereCoverImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereDarkMode($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereIsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereLogo($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon wherePaidUntil($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon wherePrimaryColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereSecondaryColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereTheme($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Salon whereUserId($value)
 */
	class Salon extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property string $name
 * @property string $slug
 * @property int $is_active
 * @property int $duration
 * @property int $self_bookable
 * @property string $price
 * @property string|null $description
 * @property string|null $icon
 * @property int $capacity
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Appointment> $appointments
 * @property-read int|null $appointments_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Employee> $employees
 * @property-read int|null $employees_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ServiceMaterial> $materials
 * @property-read int|null $materials_count
 * @property-read \App\Models\Salon $salon
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ServiceCategory> $serviceCategories
 * @property-read int|null $service_categories_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\StockItem> $stockItems
 * @property-read int|null $stock_items_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereCapacity($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereDuration($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereIsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereSelfBookable($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Service whereUpdatedAt($value)
 */
	class Service extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property int|null $parent_id
 * @property string $name
 * @property string $slug
 * @property int $is_active
 * @property string|null $image
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, ServiceCategory> $children
 * @property-read int|null $children_count
 * @property-read ServiceCategory|null $parent
 * @property-read \App\Models\Salon $salon
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Service> $services
 * @property-read int|null $services_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory whereIsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory whereParentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceCategory whereUpdatedAt($value)
 */
	class ServiceCategory extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $service_id
 * @property string $material_name
 * @property string|null $unit
 * @property string $quantity
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Service $service
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial whereMaterialName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial whereServiceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ServiceMaterial whereUpdatedAt($value)
 */
	class ServiceMaterial extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property string $name
 * @property string $unit
 * @property int $quantity
 * @property int $min_quantity
 * @property string|null $unit_price
 * @property string|null $last_restocked_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Salon $salon
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Service> $services
 * @property-read int|null $services_count
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereLastRestockedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereMinQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereUnit($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereUnitPrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|StockItem whereUpdatedAt($value)
 */
	class StockItem extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property int $package_id
 * @property string|null $price
 * @property int $user_id
 * @property \Illuminate\Support\Carbon $starts_at
 * @property \Illuminate\Support\Carbon|null $ends_at
 * @property string $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Package $package
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\SubscriptionPayment> $payments
 * @property-read int|null $payments_count
 * @property-read \App\Models\Salon $salon
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription whereEndsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription wherePackageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription whereStartsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Subscription whereUserId($value)
 */
	class Subscription extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $subscription_id
 * @property string $amount
 * @property string|null $paid_at
 * @property string|null $reference_number
 * @property string $status
 * @property int|null $confirmed_by
 * @property string|null $note
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\User|null $confirmer
 * @property-read \App\Models\Subscription $subscription
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment whereConfirmedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment whereNote($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment wherePaidAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment whereReferenceNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment whereSubscriptionId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|SubscriptionPayment whereUpdatedAt($value)
 */
	class SubscriptionPayment extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $salon_id
 * @property string $name
 * @property string|null $email
 * @property string|null $phone
 * @property string|null $address
 * @property string|null $notes
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Expense> $expenses
 * @property-read int|null $expenses_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Invoice> $invoices
 * @property-read int|null $invoices_count
 * @property-read \App\Models\Salon $salon
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier whereAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier whereNotes($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Supplier whereUpdatedAt($value)
 */
	class Supplier extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $user_id
 * @property int $salon_id
 * @property int|null $appointment_id
 * @property string $tooth_number
 * @property string $status
 * @property string|null $report
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int|null $patient_file_id
 * @property-read \App\Models\Appointment|null $appointment
 * @property-read \App\Models\PatientFile|null $patientFile
 * @property-read \App\Models\Salon $salon
 * @property-read \App\Models\User $user
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport whereAppointmentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport wherePatientFileId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport whereReport($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport whereSalonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport whereToothNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|ToothReport whereUserId($value)
 */
	class ToothReport extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property string $name
 * @property string $email
 * @property string|null $date_of_birth
 * @property string|null $allergies
 * @property string|null $medical_notes
 * @property string|null $phone
 * @property \Illuminate\Support\Carbon|null $email_verified_at
 * @property string $password
 * @property int $is_active
 * @property string $role
 * @property string|null $remember_token
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Appointment> $appointments
 * @property-read int|null $appointments_count
 * @property-read \App\Models\Employee|null $employee
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\PatientFile> $files
 * @property-read int|null $files_count
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection<int, \Illuminate\Notifications\DatabaseNotification> $notifications
 * @property-read int|null $notifications_count
 * @property-read \App\Models\Salon|null $ownedSalon
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Spatie\Permission\Models\Permission> $permissions
 * @property-read int|null $permissions_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \Spatie\Permission\Models\Role> $roles
 * @property-read int|null $roles_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Salon> $salons
 * @property-read int|null $salons_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\ToothReport> $toothReports
 * @property-read int|null $tooth_reports_count
 * @property-read User|null $user
 * @method static \Database\Factories\UserFactory factory($count = null, $state = [])
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User permission($permissions, $without = false)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User role($roles, $guard = null, $without = false)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereAllergies($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereDateOfBirth($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereEmailVerifiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereIsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereMedicalNotes($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereRole($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User withoutPermission($permissions)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|User withoutRole($roles, $guard = null)
 */
	class User extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $asset_id
 * @property string $start_date
 * @property string $end_date
 * @property string|null $provider
 * @property string|null $notes
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Asset $asset
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty whereAssetId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty whereEndDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty whereNotes($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty whereProvider($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty whereStartDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|Warranty whereUpdatedAt($value)
 */
	class Warranty extends \Eloquent {}
}

namespace App\Models{
/**
 * 
 *
 * @property int $id
 * @property int $employee_id
 * @property string $date
 * @property string $start_time
 * @property string $end_time
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Employee $employee
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime query()
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime whereEmployeeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime whereEndTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime whereStartTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder<static>|WorkTime whereUpdatedAt($value)
 */
	class WorkTime extends \Eloquent {}
}

