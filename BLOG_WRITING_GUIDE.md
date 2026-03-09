# Blog Writing Guide for Claude

This guide documents all conventions for writing articles on the Jekyll blog **"Peakboard Guru"**. Follow these rules exactly when creating new posts.

---

## 1. File Naming

**Pattern:** `YYYY-MM-DD-Title-With-Hyphens.md`

- Date prefix must match the `date:` field in front matter
- Spaces in the title become hyphens
- Preserve title case
- Remove special characters (apostrophes, colons, etc.)
- Place in `_posts/`

**Example:**
```
_posts/2026-03-03-Fun-with-Shelly-Plug-S-Switching-Power-on-and-off.md
```

---

## 2. Front Matter

### Required Fields

```yaml
---
layout: post
title: Your Article Title Here
date: 2026-03-03 00:00:00 +0000
tags: tag1 tag2
image: /assets/2026-03-03-14-30-00/title.png
---
```

| Field | Description |
|-------|-------------|
| `layout` | Always `post` |
| `title` | Human-readable title. Often uses ` - ` as separator for subtitles |
| `date` | Format: `YYYY-MM-DD HH:MM:SS +0000` |
| `tags` | **Space-separated** tag slugs (not a YAML list!). First tag = primary category |
| `image` | Path to hero image. Pattern: `/assets/YYYY-MM-DD-HH-MM-SS/title.png`. The folder name matches the post's `date:` field with hyphens |

### Optional Fields

```yaml
image_header: /assets/2026-03-03-14-30-00/title_landscape.png
bg_alternative: true
description: "One or two sentences summarizing what this article covers."
read_more_links:
  - name: Display Text
    url: https://example.com
  - name: Related Article
    url: /Related-Article-Title.html
downloads:
  - name: ProjectFile.pbmx
    url: /assets/2026-03-03-14-30-00/ProjectFile.pbmx
```

| Field | Description |
|-------|-------------|
| `image_header` | Landscape version of hero image for wide banner display |
| `bg_alternative` | `true` = light hero box style. Use together with `image_header` (modern style) |
| `description` | Shown below title in hero area and used for SEO meta tags |
| `read_more_links` | List of `{name, url}` shown in sidebar under "Related Links" |
| `downloads` | List of `{name, url}` rendered as a Guru download button image at the top of the right sidebar. Do NOT add download links in the article body — the button is generated automatically from this field |

### Post Template

```yaml
---
layout: post
title: Article Title - With Subtitle
date: 2026-03-03 00:00:00 +0000
tags: fitness
image: /assets/2026-03-03-14-30-00/title.png
image_header: /assets/2026-03-03-14-30-00/title_landscape.png
bg_alternative: true
description: "Short summary of the article for SEO and hero display."
downloads:
  - name: SampleProject.pbmx
    url: /assets/2026-03-03-14-30-00/SampleProject.pbmx
---
```

---

## 3. Tags

Tags are space-separated in front matter. Use an **industry-specific** tag that best describes the use case. Available tags:

| Tag | Industry |
|-----|----------|
| `production` | Manufacturing, factory floors, assembly lines |
| `logistics` | Warehousing, shipping, supply chain |
| `hotel` | Hotels, hospitality |
| `gastronomy` | Restaurants, catering, food service |
| `retail` | Shops, supermarkets, point of sale |
| `healthcare` | Hospitals, clinics, dental practices |
| `fitness` | Gyms, sports studios |
| `food-and-beverage` | Breweries, food production, beverages |
| `office` | Office environments, meeting rooms |
| `energy` | Energy, utilities, sustainability |
| `transportation` | Public transit, airports, fleet management |

You can use multiple tags if applicable (e.g. `production logistics`). The first tag is used as the primary category shown on the article card. Add new tags as needed when no existing tag fits — keep them lowercase, use hyphens for multi-word tags.

---

## 4. Article Content Structure

### Opening Paragraph (No Header!)

Every article starts with a direct intro paragraph **without** any heading. No `# Introduction`, no `---` separator. Just text immediately after the front matter closing `---`.

```markdown
---
...front matter...
---
In this article, we will discuss how to...
```

### Headers

- **`##` (H2)** for main sections — the primary structural divisions
- **`###` (H3)** for subsections within a section
- **Never use `#` (H1)** in the body — the layout renders the title from front matter
- Common section patterns:
  - Setup / context section
  - Step-by-step procedural sections (one H2 per step)
  - `## Result` or `## Result and conclusion` or `## Conclusion` at the end

### Images

Store images in `/assets/YYYY-MM-DD-HH-MM-SS/` folder matching the post date.

**Naming conventions:**
- Hero image: `title.png` or `title.jpg` (match the actual file extension)
- Landscape header: `title_landscape.png` or `title_landscape.jpg`
- Screenshot: `010.png` — each article typically has only one screenshot
- Animated demos: `010.gif`, `result.gif`
- Downloadable files (`.pbmx`, `.pbfx`, `.py`, `.txt`) go in the same folder

**Markdown syntax:**
```markdown
![image](/assets/2026-03-03-14-30-00/010.png)
```

Or with descriptive alt text (preferred for newer posts):
```markdown
![Data source configuration dialog](/assets/2026-03-03-14-30-00/data-source-configuration.png)
```

### Code Blocks

**Method 1 — Liquid highlight tag:**
```liquid
{% highlight json %}
{ "key": "value" }
{% endhighlight %}
```

**Method 2 — Fenced code blocks (also fine):**
````markdown
```json
{ "key": "value" }
```
````

Supported language identifiers: `json`, `lua`, `sql`, `csharp`, `python`, `abap`, `xml`, `powershell`, `html`, `url` (for URL snippets), `text` (plain text)

### Links

- Internal links use the **title slug** with `.html` extension (no date in URL!):
  ```markdown
  [Related Article](/Related-Article-Title-Slug.html)
  ```
- External links use full URLs:
  ```markdown
  [Shelly API Docs](https://shelly-api-docs.shelly.cloud/gen1/)
  ```
- No category links (categories have been removed)

### Formatting

- **Bold** (`**text**`) for UI element names, field names, key terms
- `Inline code` (backticks) for values, variable names, file names, API endpoints
- Standard Markdown lists (unordered `- item` and ordered `1. item`)
- Standard Markdown tables when needed

### Videos

```liquid
{% include youtube.html id="VIDEO_ID_HERE" %}
```

Usually placed near the end of the article as a demo video.

---

## 5. URL Structure

The blog uses flat permalinks: `/:title:output_ext`

A post file named `2026-03-03-My-Cool-Article.md` becomes the URL:
```
/My-Cool-Article.html
```

The URL preserves the exact filename casing (not lowercased). There is no date in the URL path.

---

## 6. Writing Style

- **Voice:** The blog author is "Michelle" — write in first person plural ("we") or instructional second person ("you")
- **Tone:** Technical but approachable, sometimes playful/punny titles
- **Structure:** Problem → Setup → Step-by-step walkthrough → Result/Conclusion
- **Screenshots:** Heavy use of annotated screenshots showing each configuration step
- **Practical focus:** Every article typically includes a downloadable `.pbmx` sample project
- **Download button:** Do NOT add download links as text in the article body. The Guru download button image is rendered automatically in the right sidebar from the `downloads` front matter field
- **Cross-linking:** Reference related articles and categories using internal links

---

## 7. Complete Example Post

```markdown
---
layout: post
title: Gym Class Schedule Display - Building a Fitness Studio Dashboard with Peakboard
date: 2026-03-03 00:00:00 +0000
tags: fitness
image: /assets/2026-03-03-14-30-00/title.png
bg_alternative: true
description: "Build a dynamic gym class schedule display with Peakboard."
downloads:
  - name: GymClassSchedule.pbmx
    url: /assets/2026-03-03-14-30-00/GymClassSchedule.pbmx
---
Fitness studios often need a way to present their daily class schedule.
In this article, we build a complete dashboard with a course timetable,
KPI cards, and an occupancy bar chart.

## The layout concept

The dashboard runs at 1920x1080 with a dark design and neon cyan accents.

## Setting up the data

The application uses two Peakboard lists as its data backbone.

![image](/assets/2026-03-03-14-30-00/010.png)

## Result

The finished dashboard provides an at-a-glance overview of the schedule.
```

---

## 8. Checklist Before Publishing

- [ ] File name matches pattern `YYYY-MM-DD-Title.md`
- [ ] `layout: post` is set
- [ ] `date:` matches the file name date
- [ ] `tags:` uses valid tags from the list above (space-separated)
- [ ] `image:` points to an existing hero image
- [ ] No `#` (H1) headers in the body
- [ ] First paragraph has no heading
- [ ] Internal links use `/Title-Slug.html` format (no date in URL)
- [ ] Images are in `/assets/YYYY-MM-DD-HH-MM-SS/` folder
- [ ] Article ends with a `## Result` or `## Conclusion` section
- [ ] Download link is in `downloads:` front matter only (not as text in the article body)
